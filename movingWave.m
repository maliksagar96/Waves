clear all, close all, clc

x1 = -2.5*pi;
x2 = 2.5*pi;
interval = .01;
k = 1;
w = 1;
t = 0;
x = x1:interval:x2;
KX = k*x;

y = cos(KX);
p = plot(x,y,'r');
hold on
printAxes();
hold off

axis manual

for t = 1:10000
    
    WT = w*t/10;
    p.YData = cos(KX-WT);
    pause(.1)
    drawnow
    
end






