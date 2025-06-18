clc
%(b)
ng = 40;
dg = [1 15 56 0];
%rlocus(ng,dg)

%(c)
%[k,polos] = rlocfind(ng,dg)

%(d)
zeta = 0.4;
wn = 7.16;
Mp = exp(-pi*zeta/(1-zeta^2)^(1/2))
ta = 4/(zeta*wn)

%(e)
s1 = -zeta*wn + i*wn*(1-zeta^2)^(1/2)
s2 = -zeta*wn - i*wn*(1-zeta^2)^(1/2)

%(g)
s1 = -0.4*7.16 + i*7.16*sqrt(1-0.4^2);
mod_s1=abs(s1)
ang_s1=angle(s1)
G_s1=40/(s1*(0.25*s1^2+3.75*s1+14));
mod_G_s1=abs(G_s1)
ang_G_s1=angle(G_s1)

%(h)
kp = -sin(ang_s1 + ang_G_s1)/(mod_G_s1*sin(ang_s1))
kd = sin(ang_G_s1)/(mod_s1*mod_G_s1*sin(ang_s1))

%(i)
nk = [kd kp 0]; dk = [0 1 0];
[no,do] = series(nk,dk,ng,dg);
rlocus(no,do)

%(j)
% [x,y] = ginput(1)

%(k)
G = tf(no,do)
sys = feedback(G,1);
step(sys)




