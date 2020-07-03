clear all, close all, clc

x1 = -2.5*pi;
x2 = 2.5*pi;
interval = .01;
k = 1;
w = 1;
t = 0;
x = x1:interval:x2;
KX = k*x;

n = 0;
nodes = [];
i = 1;

while(((2*n+1)*pi/2) <= x2) 
    nodes(i) = (2*n+1) * pi/2; 
    n = n+1;
    i=i+1;
end

nodesNegative = -1*nodes;
nodes =[nodesNegative nodes]

plot(nodes,zeros(length(nodes)),'*');

hold on
y = cos(KX);

printAxes();
p = plot(x,y,'r');
hold off

axis manual

for t = 1:10000
    
    WT = w*t/100;
    p.YData = cos(KX)*cos(WT);
    
    pause(.1)
    
    
    drawnow
    
end





