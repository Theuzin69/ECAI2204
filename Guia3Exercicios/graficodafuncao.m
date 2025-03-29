## Autor: Matheus Lage Muzzi Cabral
## RA: 2023009628
## Gera o gráfico da raíz de (X^2 + Y^2)
## O usuário insere o intervalo de X = [a,b]
## e o intervalo Y = [c,d]

function graficodafuncao(a, b, c, d)

figure(1);

[x,y] = meshgrid(a:0.1:b,c:0.1:d);
g=((x.^2)+(y.^2)).^(1/2);
surf(x,y,g);

title('Grafico da Função');
xlabel('X');
ylabel('Y');
zlabel('Z');
text(a/2,c/2,'raíz de (X^2 + Y^2)');

endfunction
