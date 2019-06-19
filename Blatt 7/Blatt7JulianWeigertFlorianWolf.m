% CoMa Blatt 7
% Gruppe: Florian Wolf, Julian Weigert

clear all;
close all;

%% Aufgabe 19 %%

% Unterbild 1
subplot(2,2,1);
t = 0:0.01:10;
f = 100./ (1+exp(- 3.* t));
plot(t, f);

% Unterbild 2
subplot(2,2,2);
l = 1:0.01:5;
x = cos(10.*l);
y = sin(10.*l);
z = log(l);
plot3(x,y,z);

% Unterbild 3
subplot(2,2,3);
[M,N] = meshgrid(0:0.01:4,0:0.01:4);
h = exp(- M.^2 - N.^2);
mesh(M,N,h);

% Unterbild 4
subplot(2,2,4);
barh([2015, 2016, 2017, 2018],[185, 140, 165, 110]);

%% Aufgabe 20 %%
x = -1:0.01:1;
y = - 1/4.*(x+1).^2 .* (x-1).*(x-4);

plot(x,y, 'b', 'LineWidth',2.5);
patch(x,y,'y');
hold on;
x_2 = 1:0.01:4;
y_2 = - 1/4.*(x_2+1).^2 .* (x_2-1).*(x_2-4);
plot(x_2,y_2, 'b', 'LineWidth',2.5);

patch(x_2,y_2,'r');
PlotAxisAtOrigin(x,y) 
xlabel('x') 
ylabel('y') 
text(3.5, 7, 'f(x)');
axis off;
