% plotting the lateral force
figure(1);
camber = 0;
Simout = sim('test_delfttyre_cpi');
plot(alpha,Fy_des);
hold on
camber = -0.17;
Simout = sim('test_delfttyre_cpi');
plot(alpha,Fy_des);
hold on
camber = 0.17;
Simout = sim('test_delfttyre_cpi');
plot(alpha,Fy_des);
hold on
grid on
grid minor
xlabel('Slip angle')
ylabel('Lateral force')
title('Lateral force vs slip angle')
legend(' 0 camber','-10 deg camber','+10 deg camber')
%plotting the self aligning moment
figure(2);
camber = 0;
Simout = sim('test_delfttyre_cpi');
plot(alpha,Mz_des);
hold on
camber = -0.17;
Simout = sim('test_delfttyre_cpi');
plot(alpha,Mz_des);
hold on
camber = 0.17;
Simout = sim('test_delfttyre_cpi');
plot(alpha,Mz_des);
hold on
grid on
grid minor
xlabel('Slip angle')
ylabel('Self aligning moment')
title('Self aligning moment vs slip angle')
legend(' 0 camber','-10 deg camber','+10 deg camber')
