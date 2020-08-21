clear all;
close all;
clc;

I = imread('bird.bmp');
[H, W, D] = size(I);
step_w = 100;
step_h = 100;

patch = 0;
for h_num = 0 : floor(H / step_h - 1)
   for w_num = 0 : floor(W / step_w - 1)
       x = w_num * step_w + 1;
       y = h_num * step_h + 1;
       
       rect = [x y step_w-1 step_h-1];
       O = imcrop(I, rect);
       subplot(111);
       imshow(O);
       
       patch = patch + 1;
       outputFile = char("result/" + char(num2str(patch, '%04d')) + ".jpg");
%        imwrite(O, outputFile);
   end
end