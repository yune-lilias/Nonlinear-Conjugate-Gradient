function [x1,step] = conjugage_nonlin(type,precision)
x0 = [-2;2];
g0 = grad(x0);
d0 = -g0;
step = 0;
while step < 100
a0 =  linesearch_secant('grad',x0,d0);
x1 = x0 + a0 * d0;
g1 = vpa(grad(x1));  
if(abs(g1) <= precision)
    break
end
if(x1 == x0)
    break
end
if(type == 1)
b0 = g1'*(g1-g0)/(d0'*(g1-g0));
elseif(type == 2)
b0 = g1'*(g1-g0)/(g0'*g0);
else
b0 = (g1'*g1)/(g0'*g0);
end

step = step + 1;
if(mod(step,6) == 0)
d1 = -g1;
else
d1 = -g1 + b0*d0;
end
x0 = vpa(x1);
d0 = vpa(d1);
end
end