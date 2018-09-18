
%try by myself
I0 = imread('alpaca.jpg');
I = rgb2gray(I0);

fre = zeros(256,1);
prob_freq = zeros(256,1);
cum_hist = zeros(256,1);
I2 = uint8( zeros( size(I,1), size(I,2))) ;
prob_cum = zeros(256,1);

for i=1:size(I,1)
    for j=1:size(I,2)
        number = I(i,j);
        fre (number+1) = fre( number+1) +1;
        prob_freq (number+1) = fre( number+1) / ( size(I,1)*size(I,2) );
    end
end

cum_hist(1) = fre(1); 
for i = 2:256
    cum_hist(i) = fre(i)+cum_hist(i-1);
end 
for i = 1:256
    prob_cum(i) = round (cum_hist(i) * 255 / (size(I,1)*size(I,2)) );
end
for i=1:size(I,1)
    for j = 1:size(I,2)
        I2(i,j) = prob_cum( I(i,j) +1 );
    end
end

% figure; p = histogram(I2);
% figure; o = histogram(I);
% figure; plot(last)
% imshow(I2);
% figure;plot(prob_cum);

% figure;
subplot(2,1,1);imshow(I);title('original');
subplot(2,1,2);imshow(I2);title('programming histeq by self');

figure;
subplot(3,1,1);histogram(I);title('before');
subplot(3,1,2);plot(prob_cum);title('equalization');
subplot(3,1,3);histogram(I2);title('after');
