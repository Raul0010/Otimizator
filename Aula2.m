
n = 4; %numero de pontos
G1 = [1 2 2 3 3 4 4 1 1 3]; %conjunto de ligacoes 1o grafo 
G2 = [1 2 2 3 3 4 4 1 4 2]; %conjunto de ligacoes 2o grafo
%Declarando o tamanho das matrizes de adjacencia
M1= eye(n); 
M1 = M1 .* 0;
M2 = M1;
i=1;

%Criando as matrizes de adjacencia
while (i<(length(G1)))
  
  a = G1(i);
  b = G1(i+1);
  M1(a,b) = 1;
  M1(b,a) = 1;
  i = i+2;

endwhile

i=1;

while (i<(length(G2)))
  
  a = G2(i);
  b = G2(i+1);
  M2(a,b) = 1;
  M2(b,a) = 1;
  i = i+2;

endwhile
%Printando as duas matrizes
M1
M2
i=1;
j=1;
printf("-----------\n")
while (i<n)
 while (j<n)
  M2 = trocaLinha(M2,j,j+1);
  M2
  j++;
 endwhile

 printf("-----troca de coluna-------\n")
 j=1;
 M2 = trocaCol(M2,i,i+1);
 M2
 i++;
endwhile

 



