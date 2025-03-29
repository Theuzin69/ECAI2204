## Autor: Matheus Lage Muzzi Cabral
## RA: 2023009628
## Esta função calcula numericamente o exponencial de x
## O usuário deve inserir o valor de x
## Esta versão possui um erro e < 0.0001

function retval = expx78(x)
  if ischar(x) == 0
    ex=0;
    k=0;
    while (abs(ex-exp(x)) >= 0.0001)
      ex=ex+(x^k)/(factorial(k));
      k=k+1;
    endwhile

    retval = ex;
  else
    fprintf('valor invalido!');
  endif

endfunction
