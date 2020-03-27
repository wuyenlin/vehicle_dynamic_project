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