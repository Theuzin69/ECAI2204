## Autor: Matheus Lage Muzzi Cabral
## RA: 2023009628
## Esta função calcula numericamente o exponencial de x
## O usuário deve inserir o número de iterações (n)
## e o valor de x

function retval = expx77(n, x)

ex=0;
for k=0:1:n
  ex=ex+(x^k)/(factorial(k));
endfor

retval = ex;

endfunction
