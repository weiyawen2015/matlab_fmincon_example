function [c, ceq] = myconstr(x)
c = [x(1) - 0.2*x(2)*x(5) - 71
0.9*x(3) - x(4)^2 - 67];
ceq = 3*x(2)^2*x(5) + 3*x(1)^2*x(3) - 20.875;
