

function [horz_fil , vert_fil] = energy_image(im) 
    %output image
    %x = zeros(size(im, 1), size(im, 2), 'double');
    %to greyscale
    gim = rgb2gray(im);
 
  
   %filter for vertical edges
   v = fspecial('sobel'); 
   %invert to get filter for horizontal edges
   h = v';
   
   %applying the filters for to the greyscale image 
   vert_fil =  imfilter(double(gim), v); 
   horz_fil = imfilter(double(gim), h); 
   
   %element-wise sqrt(dI/dx^2 + dI/dy^2) put into x 
   %here, is where we compute the energy of the image
   %x = sqrt(vert_fil.^2 + horz_fil.^2); 
 
   
 
end