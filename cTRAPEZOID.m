function I = cTRAPEZOID(f,a,b,m) 
  
  #Composite trapezoid rule.
  
  format long
  h = (b-a)/m;
  x = linspace(a,b,m+1);
  fprintf('\nLONG FORMAT\n')
  I = h/2*(2*sum(f(x))-f(a)-f(b))
  fprintf('SHORT FORMAT\n')
  format short
  I = h/2*(2*sum(f(x))-f(a)-f(b))
  fprintf('\n')
  
endfunction