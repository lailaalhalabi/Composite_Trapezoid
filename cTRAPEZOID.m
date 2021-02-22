function I = cTRAPEZOID(f,a,b,m) 
  
  # Composite trapezoid rule.
  # a & b  are the start and end points of the integral and m is the sub-intercals
  format long
  h = (b-a)/m;
  x = linspace(a,b,m+1);
  fprintf('\nLONG FORMAT\n')
  I = h/2*(2*sum(f(x))-f(a)-f(b))
  fprintf('SHORT FORMAT\n')
  format short
  I = h/2*(2*sum(f(x))-f(a)-f(b))
  fprintf('\n')
  
  # Example
  # I = cTRAPEZOID(@(x)log(x),1,2,4)
  
  # WE GET:
  # LONG FORMAT
  # I =    3.836995094094423e-01
  # SHORT FORMAT
  # I =  0.38370

endfunction
