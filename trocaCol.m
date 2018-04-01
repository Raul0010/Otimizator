

function [matriz] = trocaCol (matriz,col1,col2)
  matriz(:,[col1 col2]) = matriz(:,[col2 col1]);
endfunction
