function alphares = linesearch_secant(grad1,x0,d)
grad_f = str2func(grad1);
stepmax = 100;
precision = 0.01;
   step = 0;
   syms p a
       p(a) = d'*grad_f(x0+a*d);
       alpha0 = 0;
       alpha1 = 0.001;
       precision = 0.0001;
       stepmax = 80;
       while step<= stepmax
          g0 = double(vpa(p(alpha0)));
          g1 = double(vpa(p(alpha1)));
          alphares = (alpha0*g1-alpha1*g0)/(g1-g0);
         step =step + 1 ;
       if(abs(p(alpha1)) <= precision*abs(p(0)))
           alphares = alpha1;
           break
       end
       if(alphares == Inf)
           alphares = alpha0;
           break
       end
         alpha0 = double(alpha1);
         alpha1 = double(alphares);
       end
       end
