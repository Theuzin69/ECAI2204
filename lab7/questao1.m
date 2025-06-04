% ganho estado estacion�rio
figure(1)
plot(t,speed);
hold on;
plot(t,voltage);

yss = 155;
y0 = 30;
umin = 1;
umax = 5;
deltay = yss - y0;
deltau = 5-1;
K = deltay/deltau

%   Observa-se no gr�fico plotado, que a velocidade em 
%tempo estacion�rio � de 155 rad/s, e a velocidade 
%inicial � de 30 rad/s, logo a varia��o � de 125 rad/s.
%
%   A entrada vai de 1 V a 5 V, logo a varia��o � de 4 V.
%
%   Sendo assim o ganho � a divis�o da varia��o de velocidade
%pela varia��o de tens�o, que resulta em 31.25.

% constante de tempo
tal = 1.374 - 1.232

%   63% de 155 � aproximadamente 97, onde o tempo � igual
%a 1,374 s. O tempo inicial � de 1,232 s. Logo subtraindo-os
%respectivamente, obtemos uma constante de tempo de 0,142 s.

wn = 25;
zeta = .6;
Kp = (wn^2)*tal/K
Kd = (-1 + 2*zeta*25*tal)/K

%Mp = exp() terminar o overshoot!

