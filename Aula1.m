numpontos =26; %numero de pontos que formam a distância entre paredes
dx = 1/numpontos; %intervalo entre os pontos
pontos = [1:numpontos]; %criei não sei por quê
iteracoes = 25; %numero de iteracoes de m
i = 1; %valor inicial da matriz
t=5*10^(-4); %tempo
M = iteracoes; %iteracoes de m

C = zeros(numpontos, numpontos); %inicializa matriz C com zeros nxn
F = zeros(numpontos, 1); %inicializa matriz F com zeros nx1 (temperatura inicial)
T = zeros(numpontos, 1); %inicializa matriz T com zeros nx1 (temperatura final)

for i=1:numpontos
  F(i,1) = 1 - abs(2*i*dx - 1); %faz o triangulo da temperatura inicial
end

%executa o preenchimento da matriz C com a equação loka
  for i=1:numpontos
    
    for j=1:numpontos
      for m=0:M
        if(m==0)
          C(i, j) = C(i, j) + (exp(-((m*pi)^2)*t)*dx*cos(m*pi*j*dx)*cos(m*pi*i*dx))/(2*1);
        else
          C(i, j) = C(i, j) + (exp(-((m*pi)^2)*t)*dx*cos(m*pi*j*dx)*cos(m*pi*i*dx))/(2*1/2);
        endif  
      end  
    end
  end
  %parte da matriz C é multiplicada por 2, devido a equação loka
  for i=1:numpontos
    for j=2:numpontos - 1
      C(i, j) = 2*C(i,j);
    end
  end
T = C * F; %Multiplica matriz C pela F para encontrar temperatura final
plot(pontos*dx, T, pontos*dx, F); %exibe o gráfico