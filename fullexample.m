clear all
clc

x0 = [1; 4; 5; 2; 5];
lb = [-Inf; -Inf; 0; -Inf; 1];
ub = [ Inf; Inf; 20;Inf;Inf];



Aeq = [1 -0.3 0 0 0];
beq = 0;
A = [0 0 0 -1 0.1
0 0 0 1 -0.5
0 0 -1 0 0.9];
b = [0; 0; 0];

tolx=1e-2;
maxloop=500;%...%
tolfun = 1e-2;
OPTIONS = optimset('TolX',tolx,'Tolfun',tolfun, 'MaxIter',maxloop, 'Algorithm','interior-point','MaxFunEvals',1e6,...
'GradObj','off', 'GradConstr','off',...
'Display','final', 'output',@(x,optimValues,state) myoutput(x,optimValues,state,'iter'), 'PlotFcns',@optimplotfval);


[x,fval,exitflag]=fmincon(@myobj,x0,A,b,Aeq,beq,lb,ub,@myconstr,OPTIONS)
%---------------------------------------------------------

%---------------------------------------------------------
