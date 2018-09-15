A = imread('sealife.bmp');
a = histogram(A);

B = imread('sealife.gif');
figure;
b = histogram(B);

C = imread('DogandCat.jpg');
figure;
c = histogram(C);

D = imread('sealife.png');
figure;
d = histogram(D);

E = imread('sealife.tif');
figure;
e = histogram(E);