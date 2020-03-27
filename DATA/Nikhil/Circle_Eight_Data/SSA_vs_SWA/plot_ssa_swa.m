%%
clear all;

load("rad_ay.mat");
figure(1);

plot(ay_neu, rad_neu*180/pi,'LineWidth',2);
hold on;
plot(ay_5, rad_5*180/pi,'LineWidth',2);
plot(ay_10, rad_10*180/pi,'LineWidth',2);
plot(ay_neg5, rad_neg5*180/pi,'LineWidth',2);
plot(ay_neg10, rad_neg10*180/pi,'LineWidth',2);
hold off;

xlabel('Lateral Acceleration a_y [m/s^2]');
ylabel('Steering angle \delta [rad]');
title("Steady State");
legend("Neutral","\gamma=5 deg","\gamma=10 deg","\gamma=-5 deg","\gamma=-10 deg","Location","northeast");
grid on;
axis([-2 12 -0.5 1.5]);


%%
% data = cell(1,5);
% 
% for i = 1:2
%     filename_pos = [num2str(5*i),'_SSA_vs_SWA.csv'];
%     filename_neg = [num2str(5*i),'neg_SSA_vs_SWA.csv'];
%     data{i} = importdata(filename_pos);
%     data{6-i} = importdata(filename_neg);
% end
% i = 3;
% filename = 'Neutral_SteerSSA_vs_steerangle.csv';
% data{i} = importdata(filename);
% 
% figure(1);
% for i = 1:size(data,2)
%     
%     hold on;
%     plot(data{i}(:,2), data{i}(:,1));
%     plot(data{i}(:,2), data{i}(:,1));
%     title('Steady State');
% end


%%
clear all;
load("ssa_swa.mat");

figure(2);
plot(t_10, ay_10,'LineWidth',1.5);
hold on;
plot(t_5, ay_5,'LineWidth',1.5);
plot(t_neu, ay_neu,'LineWidth',1.5);
plot(t_neg5, ay_neg5,'LineWidth',1.5);
plot(t_neg10, ay_neg10,'LineWidth',1.5);
hold off;
xlabel("Time t [s]");
ylabel("Lateral acceleration a_y [m/s^2]");
title("Steady state a_y vs t");
grid on;
legend('\gamma= 10\circ','\gamma= 5\circ','neutral','\gamma= -5\circ','\gamma= -10\circ','Location','Northwest');


figure(3);
plot(t_10, rad_10*180/pi,'LineWidth',1.5);
hold on;
plot(t_5, rad_5*180/pi,'LineWidth',1.5);
plot(t_neu, rad_neu,'LineWidth',1.5);
plot(t_neg5, rad_neg5*180/pi,'LineWidth',1.5);
plot(t_neg10, rad_neg10*180/pi,'LineWidth',1.5);
hold off;
xlabel("Time t [s]");
ylabel("Steering angle \delta [deg]");
title("Steady state \delta vs t");
grid on;
legend('\gamma= 10\circ','\gamma= 5\circ','neutral','\gamma= -5\circ','\gamma= -10\circ','Location','Northwest');

%%
figure(4);
plot(rad_5(700:end), ay_5(700:end)*180/pi,'LineWidth',2);
hold on;
plot(rad_10(700:end), ay_10(700:end)*180/pi,'LineWidth',2);
plot(rad_neg5(700:end), ay_neg5(700:end)*180/pi,'LineWidth',2);
plot(rad_neg10(700:end), ay_neg10(700:end)*180/pi,'LineWidth',2);
plot(rad_neu(700:end), ay_neu(700:end)*180/pi,'LineWidth',2);
hold off;
xlabel("Steering angle \delta [deg]");
ylabel("Lateral acceleration a_y [m/s^2]");
title("Steady state a_y vs \delta");
grid on;
grid minor;
legend('\gamma= 5\circ','\gamma= 10\circ','\gamma= -5\circ','\gamma= -10\circ','neutral','Location','Northeast');
axis([-1 7 -100 600]);
%%
