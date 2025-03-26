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
%%

%%4.1
%%

%%5.1
%%