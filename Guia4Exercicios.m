## Autor: Matheus Lage Muzzi Cabral
## RA: 2023009628

clc
warning('off', 'all');

%%4.1
syms x;
h = cos(x)/x^2 + x^3 - 1;
figure(1);
subplot(2,2,1);
ezplot(h, [0 5]);

syms t;
r1 = t^2;
r2 = t^3;
subplot(2,2,2);
ezplot(r1, r2, [-5 5]);

syms s;
a1 = exp(-0.1*s)*cos(s);
a2 = exp(-0.1*s)*sin(s);
a3 = 10*s;
subplot(2,2,3);
ezplot3(a1,a2,a3,[0 3*pi]);

syms x y;
g = y/(x^2 + y^2 +1);
subplot(2,2,4);
ezsurf(g, [-5 5 -4 4]);
%%

%%7.1.1
syms x;
limit(x/cos(x),x,2*pi)

limit((x^2+1)/(2*x^3+3*x+2),x,0)

limit((4*x^3 + 9*x)/(2*x^3 + 3*x^2 + 3),x,inf)

%%

%%8.1.6

syms x y;
f = (x^2+1)/(cos(x) +2);
g = y + x*cos(x + y);

%(a)
fprintf("f'(x): ");
diff(f)
fprintf("f''(2pi): ");
subs(diff(f),x,2*pi)

fprintf("gx(x,y): ");
diff(g,x)

dgy = diff(g,y);
x=0;
y=0;
fprintf("dgy: ");
fprintf("gy(0,0): ");
subs(dgy)

%(b)
figure(2);
subplot(1,2,1);
d2f = diff(f,2);
ezplot(d2f, [0 5]);

%(c) não tá derivando!
subplot(1,2,2);
d2gx = diff(g,x);
d2gx = diff(d2gx,x);
ezplot(d2gx, [-3 3 -3 3]);
%%

%%9.1
syms x y;
f = x/(cos(x)+2);
g = y + x*cos(x+y);

fprintf("integral de f(x) de -1 a 1: ");
double(int(f,-1,1))
fprintf("integral de g(x) dx de 0 a y, dy de 0 a 2: ");
double(int(int(g,x,0,y),y,0,2))
%%

%%11.2
syms x y;
S = solve(x^2 + y^2 - 1 == 0,x + y == 1);
fprintf('Primeiro conjunto de soluções [x,y]\n');
S{1}.x
S{1}.y
fprintf('Segundo conjunto de soluções [x,y]\n');
S{2}.x
S{2}.y
%%

%%14.1
syms b w t;
f = cos(t);
g = exp(-b*t)*sin(w*t);
F = laplace(f)
G = laplace(g)
%%

%%14.2
F = fourier(f)
G = fourier(g)
%%
