# Nonlinear-Conjugate-Gradient
grad.m: the gradient of the function
linesearch_secant.m: find alpha by secant method
         Inside this function, stepmax is set tp 100 (can change higher)
                               precision is set to 0.01 (also able to change)
conjugage_nonlin.m: main function
        [x1,step] = conjugage_nonlin(type,precision)
              type = 1: Hestenes-Stiefel
              type = 2: Polak-Ribiere
              type = 3: Fletcher-Reeves
        stepmax is still 100
        g0 d0: former gradient and direction 
        g1 d1: latter gradient and direction
        b0:beta
        a0:alpha
        
To reduce running time, I use vpa in calculate g1 and d1
Update direction d_k is reset to -g_k every 6 iterations (ignore the beta*d0)
