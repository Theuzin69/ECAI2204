clc
%%3.2
figure(1)
ezplot('(((x^2)+(y^2))^2)-2*((x^2)-(y^2))',[-2,2])
title('Lemniscate de Bernoulli')
xlabel('x');
ylabel('y');
%%

%%3.5
figure(2)
subplot(2,1,1)

[X,Y] = meshgrid(-4:0.1:4,-4:0.1:4);
Z1 = sin(((X.^2)+(Y.^2)+1).^(1/2))./((X.^2)+(Y.^2)+1).^(1/2);
surf(X,Y,Z1)

subplot(2,1,2)
[X,Y] = meshgrid(-4:0.1:4,-5:0.1:5);
Z2 = 1./((X.^2)+(Y.^2)+1);
surf(X,Y,Z2)
%%

%%3.7
figure(3)
ezplot3('cos(t)','sin(t)','10*t',[0,4*pi])
title('Curva no Espaço');
xlabel('cos(t)');
ylabel('sen(t)');
zlabel('10t');
%%

%%4.1
z=complex(2,3);

#(a)
abs(z)

#(b)
angle(z)

#(c)
fprintf('z = ∣%d∣e%di\n',abs(z),angle(z));

#(d)
conj(z)

#(e)
(z*conj(z))^(1/2)
%%

%%5.1
A=[2 0 1+i;0 1 0;1+i 0 2+2i];
B=[1 2 i];

#(a)
det(A)

#(b)
inv(A)

#(c)
A^2

#(d)
A.*A

#(e)
abs(A)

#(f)
angle(A)

#(g)
real(A)
imag(A)

#(h)
x = B*inv(A)

%%
