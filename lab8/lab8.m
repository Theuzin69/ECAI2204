clc;
 ng = 40;
% dg = [.25 3.75 14];
% rlocus(ng,dg)

 G = tf(ng,dg);
% sys = feedback(G,1);
% step(sys);
% grid;

 Gn = 10*G;
% sys_n = feedback(Gn,1);
% step(sys_n);
% grid;

ng = 1;
dg = [1 10 106];
rlocus(ng,dg)


