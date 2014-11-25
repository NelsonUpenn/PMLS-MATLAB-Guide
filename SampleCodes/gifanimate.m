%% William Parkin 4/2013 gifanimate.m   MATLAB R2014a:  make a gif animation
clear all; close all
%% initialize
% create our ranges
xo = 5;
x = -xo:.1:xo;
ct = (-xo):(.1):(xo);
%% create video frames
figure
set(gca, 'nextplot', 'replacechildren', 'Color', 'white','FontSize',14)
title(['time ranges from ', num2str(-xo), ' to ', num2str(xo)])
xlabel('x'); ylabel('sin(x-ct)')
for j = 1:size(ct,2),
    result = sin(x - ct(j));
    plot(x, result, 'r')
    ylim([-1.1, 1.1])         % fix this to avoid frame-to-frame jitter
% get frame to fill gif
    f = getframe(gcf);
    if j==1
        [im(:, : ,1 ,j), map] = rgb2ind(f.cdata, 256, 'nodither');
    else                     % every frame uses the same color map
        im(:, :, 1, j) = rgb2ind(f.cdata,map, 'nodither');
    end
end
%% save the gif animation
imwrite(im, map, 'DancingPeaks.gif', 'DelayTime', 0, 'LoopCount', inf)
