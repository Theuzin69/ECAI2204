clc;
##figure(1);
##t=-2:0.01:2;
##plot(t,t.^3-t.^2+1);
##
##%figure(2);
##t=-2:0.01:2;
##y=t.^3-t.^2+1;
##plot(t,y,'g');
##text(-1.4,-4,'\leftarrow y=t^3-t^2+1');
##title('Gráfico bem massa');
##xlabel('t');
##ylabel('f(t)');
##
##%figure(1);
##clf;
##t=-5:0.01:5;
##y=sinh(t);
##plot(t,y,'*g');
##title('Gráfico mucho loco');
##xlabel('t');
##ylabel('y=senh(t)');
##grid on;
##
##figure(3);
##t=0:0.01:8;
##z=exp(-0.5*t).*cos(t);
##plot(t,z,'-.m');
##title('Gráfico outra vez');
##xlabel('t');
##ylabel('z');
##text(2,0.4,'\leftarrow z=e^{-0.5t}cos(t)');
##[x,y]=ginput(1)
##
##figure(4);
##x=0:0.01:8;
##plot(x,cos(x),'-.r');
##hold on;
##plot(x,sin(x),'b');
##
##figure(5);
##plot(x,cos(x),'r',x,sin(x),'b');





