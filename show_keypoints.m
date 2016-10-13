
%Image 1
image = imread('prague_house.jpg','jpg');

[x,y,scores, Ix, Iy] = extract_keypoints(image); 

imshow(image)
hold on
i = 1:size(x,1);
%plot(x(i),y(i),'or','markersize',167.58,'linewidth',1)
scatter(x,y,scores./100000000000,'m')
hold off

saveas(gcf, 'prague_house_corners.png');


%Image 2
image = imread('checkers.jpg','jpg');

[x,y,scores, Ix, Iy] = extract_keypoints(image); 

figure,
imshow(image)
hold on
i = 1:size(x,1);
%plot(x(i),y(i),'or','markersize',167.58,'linewidth',1)
scatter(x,y,scores./1000000000000,'m')
hold off

saveas(gcf, 'checkers_corners.png');

%Image 3
image = imread('prague_clock.jpg','jpg');

[x,y,scores, Ix, Iy] = extract_keypoints(image); 

figure,
imshow(image)
hold on
i = 1:size(x,1);
%plot(x(i),y(i),'or','markersize',167.58,'linewidth',1)
scatter(x,y,scores./100000000000,'m')
hold off

saveas(gcf, 'prague_clock.png');

%Image 4
image = imread('st_basils.jpg','jpg');

[x,y,scores, Ix, Iy] = extract_keypoints(image); 

figure,
imshow(image)
hold on
i = 1:size(x,1);
%plot(x(i),y(i),'or','markersize',167.58,'linewidth',1)
scatter(x,y,scores./100000000000,'m')
hold off

saveas(gcf, 'st_basils_corners.png');


%Image 5
image = imread('prague_gothic.jpg','jpg');

[x,y,scores, Ix, Iy] = extract_keypoints(image); 

figure,
imshow(image)
hold on
i = 1:size(x,1);
%plot(x(i),y(i),'or','markersize',167.58,'linewidth',1)
scatter(x,y,scores./100000000000,'m')
hold off

saveas(gcf, 'prague_gothic_corners.png');

%Image 6
image = imread('quick_fox.png','png');

[x,y,scores, Ix, Iy] = extract_keypoints(image); 

figure,
imshow(image)
hold on
i = 1:size(x,1);
%plot(x(i),y(i),'or','markersize',167.58,'linewidth',1)
scatter(x,y,scores./100000000000)
hold off

saveas(gcf, 'quick_fox_corners.png');

%Image 7
image = imread('campbells_soup.jpg','jpg');

[x,y,scores, Ix, Iy] = extract_keypoints(image); 

figure,
imshow(image)
hold on
i = 1:size(x,1);
%plot(x(i),y(i),'or','markersize',167.58,'linewidth',1)
scatter(x,y,scores./100000000000)
hold off

saveas(gcf, 'campbells_soup_corners.png');

%Image 8
image = imread('art.jpg','jpg');

[x,y,scores, Ix, Iy] = extract_keypoints(image); 

figure,
imshow(image)
hold on
i = 1:size(x,1);
%plot(x(i),y(i),'or','markersize',167.58,'linewidth',1)
scatter(x,y,scores./100000000000, 'r')
hold off

saveas(gcf, 'art_corners.png');

%Image 9
image = imread('krakow.jpg','jpg');

[x,y,scores, Ix, Iy] = extract_keypoints(image); 

figure,
imshow(image)
hold on
i = 1:size(x,1);
%plot(x(i),y(i),'or','markersize',167.58,'linewidth',1)
scatter(x,y,scores./100000000000)
hold off

saveas(gcf, 'krakow_corners.png');

%Image 10
image = imread('roses.jpg','jpg');

[x,y,scores, Ix, Iy] = extract_keypoints(image); 

figure,
imshow(image)
hold on
i = 1:size(x,1);
%plot(x(i),y(i),'or','markersize',167.58,'linewidth',1)
scatter(x,y,scores./100000000000)
hold off

saveas(gcf, 'roses_corners.png');