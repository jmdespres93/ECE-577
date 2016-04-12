%% Question 1

t = 0:1/1000000:.003;
g1 = cos(2*pi*10^3.*t);
g2 = cos(2*pi*9*10^3.*t);

%% Part a
figure(1);
plot(t*1e3,g1,t*1e3,g2)
title('Homework 1, Question 1');
xlabel('Time, ms');
ylabel('Amplitude, unitless');
grid on

%% Part b
hold on
n = 0:1/8000:0.003;
g1_n = cos(2*pi*1e3.*n);
g2_n = cos(2*pi*9e3.*n);
plot(n*1e3,g1_n,'*',n*1e3,g2_n,'*')

%% Part c
% Any integer multiple of 8 kHz, plus or minus 1 kHz, will alias to the same
% discrete-time sequence.

%% Question 4

% Load the image, and convert to doubles for processing
x = double(imread('mandrill_BW.bmp'));
% Display the image in a figure.
% Pixels range from 0 (dark) to 256 (light)
figure(2)
imshow(x,[0 256]);

% smoothing filter
h_1 = [0.25 0.25 0.25 0.25];
for i = 1:length(x(:,1))
    y_1(i,:) = conv(x(i,:),h_1);
end
figure(3)
imshow(y_1,[0 256]);

% edge detection filtering
h_2 = [1 -2 1];
for i = 1:length(x(:,1))
    y_2(i,:) = conv(x(i,:),h_2);
end
figure(4)
imshow(y_2,[0 256]);
