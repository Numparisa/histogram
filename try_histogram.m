A = imread('alpaca.bmp');
subplot(3,2,1);
a = histogram(A);
title('BMP file');

B = imread('alpaca.gif');
subplot(3,2,2);
b = histogram(B);
title('GIF file');

C = imread('alpaca.jpg');
subplot(3,2,3);
c = histogram(C);
title('JPG file');

D = imread('alpaca.png');
subplot(3,2,4);
d = histogram(D);
title('PNG file');

E = imread('alpaca.tif');
subplot(3,2,5)
e = histogram(E);
title('TIF file');

F = imread('alpaca_hist_imagj.PNG');
subplot(3,2,6)
f = imshow(F);
title('imagej');