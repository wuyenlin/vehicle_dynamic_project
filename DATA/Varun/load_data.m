%% 1 Varun
% 1:VX, 2:Sideslip, 3:Yaw rate, 4:ay, 5:Steer, 6:Time
clear all

%loading step response data
figure(1)
tiledlayout(3,7)
step_data = cell(1,21);
for i = 1:10    % positive camber angles
    filename = ['csv\step\step',num2str(i),'neg.csv'];
    step_data{i} = importdata(filename);
    nexttile
    hold on
    plot(step_data{i}(:,6),step_data{i}(:,2))
    plot(step_data{i}(:,6),step_data{i}(:,3))
    plot(step_data{i}(:,6),step_data{i}(:,4))
    plot(step_data{i}(:,6),step_data{i}(:,5))
    title(['step',num2str(i),'neg'])
end
i=11;   % zero camber angles
filename = ['csv\step\step',num2str(0),'.csv'];
step_data{i} = importdata(filename);
nexttile
hold on
plot(step_data{i}(:,6),step_data{i}(:,2))
plot(step_data{i}(:,6),step_data{i}(:,3))
plot(step_data{i}(:,6),step_data{i}(:,4))
plot(step_data{i}(:,6),step_data{i}(:,5))
title(['step',num2str(0)])
for i = 12:21    % negative camber angles
    filename = ['csv\step\step',num2str(i-11),'pos.csv'];
    step_data{i} = importdata(filename);
    nexttile
    hold on
    plot(step_data{i}(:,6),step_data{i}(:,2))
    plot(step_data{i}(:,6),step_data{i}(:,3))
    plot(step_data{i}(:,6),step_data{i}(:,4))
    plot(step_data{i}(:,6),step_data{i}(:,5))
    title(['step',num2str(i-11),'pos'])
end

%loading sine sweep data
figure(2)
tiledlayout(3,7)
sine_data = cell(1,21);
for i = 1:10    % positive camber angles
    filename = ['csv\sinewave\sine',num2str(i),'neg.csv'];
    sine_data{i} = importdata(filename);
    nexttile
    hold on
    plot(sine_data{i}(:,6),sine_data{i}(:,2))
    plot(sine_data{i}(:,6),sine_data{i}(:,3))
    plot(sine_data{i}(:,6),sine_data{i}(:,4))
    plot(sine_data{i}(:,6),sine_data{i}(:,5))
    title(['sine',num2str(i),'neg'])
end
i=11;   % zero camber angles
filename = ['csv\sinewave\sine',num2str(0),'.csv'];
sine_data{i} = importdata(filename);
nexttile
hold on
plot(sine_data{i}(:,6),sine_data{i}(:,2))
plot(sine_data{i}(:,6),sine_data{i}(:,3))
plot(sine_data{i}(:,6),sine_data{i}(:,4))
plot(sine_data{i}(:,6),sine_data{i}(:,5))
title(['sine',num2str(0)])
for i = 12:21    % negative camber angles
    filename = ['csv\sinewave\sine',num2str(i-11),'pos.csv'];
    sine_data{i} = importdata(filename);
    nexttile
    hold on
    plot(sine_data{i}(:,6),sine_data{i}(:,2))
    plot(sine_data{i}(:,6),sine_data{i}(:,3))
    plot(sine_data{i}(:,6),sine_data{i}(:,4))
    plot(sine_data{i}(:,6),sine_data{i}(:,5))
    title(['sine',num2str(i-11),'neg'])
end
%%  2 
%plotting for the step Yaw rate  for step
clc;
clear sine_data_r
figure(3);
step_data_r = cell(1,21);
for i= [1,5,10]    % positive camber angles
    filename = ['csv\step\step',num2str(i),'neg.csv'];
    step_data_r{i} = importdata(filename);
    hold on
    plot(step_data_r{i}(:,6),step_data_r{i}(:,3))
    title(['step',num2str(i),'neg'])
 end
hold on
for j = [1,5,10]    % positive camber angles
    filename = ['csv\step\step',num2str(j),'pos.csv'];
    step_data_r{j+11} = importdata(filename);
    hold on
    plot(step_data_r{j+11}(:,6),step_data_r{j+11}(:,3))
    title(['step',num2str(j),'neg']);
 end
hold on
k=11;   % zero camber angles
filename = ['csv\step\step',num2str(0),'.csv'];
step_data_r{k} = importdata(filename);
plot(step_data_r{k}(:,6),step_data_r{k}(:,3));
lgd = legend('-1 deg','-5 deg','-10 deg','1 deg','5 deg','10 deg','0 deg');
title(lgd,'Camber Angles')
xlabel('Time step');
ylabel('Yaw velocity (rad/sec)');
title('Step Response of the car');
xlim([20,35]);
ylim([0.08,0.14]);
grid on
grid minor
%% 3
% Plot for the Lateral acceleration for step input
clc;
clear sine_data_r
figure(4);
step_data_r = cell(1,21);
for i= [1,5,10]    % positive camber angles
    filename = ['csv\step\step',num2str(i),'neg.csv'];
    step_data_r{i} = importdata(filename);
    hold on
    plot(step_data_r{i}(:,6),step_data_r{i}(:,4))
    title(['step',num2str(i),'neg'])
 end
hold on
for j = [1,5,10]    % positive camber angles
    filename = ['csv\step\step',num2str(j),'pos.csv'];
    step_data_r{j+11} = importdata(filename);
    hold on
    plot(step_data_r{j+11}(:,6),step_data_r{j+11}(:,4))
    title(['step',num2str(j),'neg']);
 end
hold on
k=11;   % zero camber angles
filename = ['csv\step\step',num2str(0),'.csv'];
step_data_r{k} = importdata(filename);
plot(step_data_r{k}(:,6),step_data_r{k}(:,4));
lgd = legend('-1 deg','-5 deg','-10 deg','1 deg','5 deg','10 deg','0 deg');
title(lgd,'Camber Angles')
xlabel('Time step');
ylabel('Lateral acceleration (m/sec^2)');
title('Step Response of the car');
xlim([20,35]);
ylim([2,4]);
grid on
grid minor
%% 4
% Plot for the Side slip for step input
clc;
clear sine_data_r
figure(4);
step_data_r = cell(1,21);
for i= [1,5,10]    % positive camber angles
    filename = ['csv\step\step',num2str(i),'neg.csv'];
    step_data_r{i} = importdata(filename);
    hold on
    plot(step_data_r{i}(:,6),step_data_r{i}(:,2))
    title(['step',num2str(i),'neg'])
 end
hold on
for j = [1,5,10]    % positive camber angles
    filename = ['csv\step\step',num2str(j),'pos.csv'];
    step_data_r{j+11} = importdata(filename);
    hold on
    plot(step_data_r{j+11}(:,6),step_data_r{j+11}(:,2))
    title(['step',num2str(j),'neg']);
 end
hold on
k=11;   % zero camber angles
filename = ['csv\step\step',num2str(0),'.csv'];
step_data_r{k} = importdata(filename);
plot(step_data_r{k}(:,6),step_data_r{k}(:,2));
lgd = legend('-1 deg','-5 deg','-10 deg','1 deg','5 deg','10 deg','0 deg');
title(lgd,'Camber Angles')
xlabel('Time step');
ylabel('Side slip angle (rad)');
title('Step Response of the car');
xlim([20,35]);
ylim([-6e-3,-3e-3]);
grid on
grid minor
%% Sine wave response in Yaw velocity
figure(5)
clear sine_data_r
sine_data_r = cell(1,21);
for i = [1,5,10]   % positive camber angles
    filename = ['csv\sinewave\sine',num2str(i),'neg.csv'];
    sine_data_r{i} = importdata(filename);
    hold on
    plot(sine_data_r{i}(:,6),sine_data_r{i}(:,2))
end
hold on
i=11;   % zero camber angles
filename = ['csv\sinewave\sine',num2str(0),'.csv'];
sine_data_r{i} = importdata(filename);
hold on
plot(sine_data_r{i}(:,6),sine_data_r{i}(:,2))
for i = [12,16,21]    % negative camber angles
    filename = ['csv\sinewave\sine',num2str(i-11),'pos.csv'];
    sine_data_r{i} = importdata(filename);
    hold on
    plot(sine_data_r{i}(:,6),sine_data_r{i}(:,2))
end
lgd = legend('-1 deg','-5 deg','-10 deg','1 deg','5 deg','10 deg','0 deg');
title(lgd,'Camber Angles')
xlabel('Time step');
ylabel('Yaw velocity (rad/sec)');
title('Sine Response of the car');