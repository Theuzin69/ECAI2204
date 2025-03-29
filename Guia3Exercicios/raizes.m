## Autor: Matheus Lage Muzzi Cabral
## RA: 2023009628
## Este script cálcula raízes de polinômios de segundo grau
## forma dos polinômios: P(x) = a*(x^2) + b*x + c

a=input('Digite o valor de a=');
b=input('Digite o valor de b=');
c=input('Digite o valor de c=');

t=['As raízes do polinômio "P(x) = ',num2str(a),'*(x^2) + ',num2str(b),'*x + ',num2str(c),'" são:'];
disp(t);

p = [a b c];
S = roots(p)
clear S;
