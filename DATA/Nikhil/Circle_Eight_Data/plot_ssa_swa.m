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


figure(4);
plot(rad_10, ay_10,'LineWidth',1.5);
hold on;
plot(rad_5, ay_5,'LineWidth',1.5);
plot(rad_neu, ay_neu,'LineWidth',1.5);
plot(rad_neg5, ay_neg5,'LineWidth',1.5);
plot(rad_neg10, ay_neg10,'LineWidth',1.5);
hold off;
xlabel("Steering angle \delta [deg]");
ylabel("Lateral acceleration a_y [m/s^2]");
title("Steady state a_y vs \delta");
grid on;
legend('\gamma= 10\circ','\gamma= 5\circ','neutral','\gamma= -5\circ','\gamma= -10\circ','Location','Northwest');
