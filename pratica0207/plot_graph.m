%% =============== 
%%
clear
close all
clc


load('ident_data');

figure()
subplot(2,1,1)
plot(data_Ic(:,1),data_Ic(:,2),'linewidth',2);
grid on
% grid minor
axis([0 2 -0.3 1.3])
subplot(2,1,2)
plot(data_Vc(:,1),data_Vc(:,2),'linewidth',2);
grid on
axis([0 2 -0.1 11])
% grid minor
