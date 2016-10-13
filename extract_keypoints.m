function [x,y, scores, Ix, Iy] = extract_keypoints(image)
    
    %computing the gradients of the image in the x and y directions 
    [Ix, Iy] = energy_image(image); 
   
    %contains all r-values
    r_vals = zeros(size(image, 1), size(image, 2)); 
    
    %using a window size of 5, thus an offset of two in either direction
    offset = 2;
    
    %empirical constant of 0.04
    k = 0.04; 
   
 
     for i=3:size(image,1)-3
        for j=3:size(image,2)-3
        
         %getting the Ix of a certain window
        Ix_copy = Ix(i-offset:i+offset, j-offset:j+offset);
        Iy_copy = Iy(i-offset:i+offset, j-offset:j+offset);
       
        
        %computing the M value
        M = [sum(sum(Ix_copy^2)) sum(sum(Ix_copy*Iy_copy)) ; sum(sum(Ix_copy*Iy_copy)) sum(sum(Iy_copy^2))];
        R = det(M) - k*(trace(M))^2;
        r_vals(i , j) = R; 
        
     end
     end
    %our threshold
    n = size(r_vals,1)*size(r_vals,2)*.01;
    %get the values and the indexes of our top n values
    [values, indexed ] = sort( r_vals(:), 'descend' );
    [ y, x ] = ind2sub( size(r_vals), indexed(1:n) );
    scores = values(1:n); 
  
end