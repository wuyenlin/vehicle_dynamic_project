%%
clear all;

load("rad_ay.mat");
figure(1);

plot(rad_neu*180/pi, ay_neu);
hold on;
plot(rad_5*180/pi, ay_5);
plot(rad_10*180/pi, ay_10);
plot(rad_neg5*180/pi, ay_neg5);
plot(rad_neg10*180/pi, ay_neg10);
hold off;

xlabel('swa \delta [rad]');
ylabel('Lateral Acceleration a_y [m/s^2]');
title("Steady State");
legend("Neutral","\gamma=5 deg","\gamma=10 deg","\gamma=-5 deg","\gamma=-10 deg","Location","northeast");
grid on;
axis([-0.6 1.6 -2 10]);


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
plot(ay_10(700:end), rad_10(700:end)*180/pi,'LineWidth',1.5);
hold on;
plot(ay_5(700:end), rad_5(700:end)*180/pi,'LineWidth',1.5);
plot(ay_neu(700:end), rad_neu(700:end)*180/pi,'LineWidth',1.5);
plot(ay_neg5(700:end), rad_neg5(700:end)*180/pi,'LineWidth',1.5);
plot(ay_neg10(700:end), rad_neg10(700:end)*180/pi,'LineWidth',1.5);
hold off;
ylabel("Steering angle \delta [deg]");
xlabel("Lateral acceleration a_y [m/s^2]");
title("Steady state \delta vs a_y");
grid on;
grid minor;
legend('\gamma= 10\circ','\gamma= 5\circ','neutral','\gamma= -5\circ','\gamma= -10\circ','Location','Southeast');

