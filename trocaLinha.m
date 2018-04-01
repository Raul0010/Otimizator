

function [matriz] = trocaLinha (matriz,linha1, linha2)
  
  matriz([linha1 linha2],:) = matriz([linha2 linha1],:);
  
  
endfunction

