function gres = grad(x)
   syms a b p
   p(a,b) = (100*(b-a^2)^2 + (1 - a)^2);
   g = gradient(p);
   gres = g(x(1),x(2));
end