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
    hold on;
    plot(step_data_r{i}(:,6),step_data_r{i}(:,3),'LineWidth',2);
    title(['step',num2str(i),'neg']);
 end
hold on
for j = [1,5,10]    % positive camber angles
    filename = ['csv\step\step',num2str(j),'pos.csv'];
    step_data_r{j+11} = importdata(filename);
    hold on
    plot(step_data_r{j+11}(:,6),step_data_r{j+11}(:,3),'LineWidth',2);
    title(['step',num2str(j),'neg']);
 end
hold on;
k = 11;   % zero camber angles
filename = ['csv\step\step',num2str(0),'.csv'];
step_data_r{k} = importdata(filename);
plot(step_data_r{k}(:,6),step_data_r{k}(:,3),'LineWidth',2);
%lgd = legend('-1 deg','-5 deg','-10 deg','1 deg','5 deg','10 deg','0 deg');
%title(lgd,'Camber Angles');
legend("\gamma= -1\circ","\gamma= -5\circ","\gamma= -10\circ","\gamma= 1\circ","\gamma= 5\circ","\gamma= 10\circ", "neutral","Location","northeast");
xlabel('Time t [s]');
ylabel('Yaw rate r [rad/s]');
title('Step Response: r vs t');
xlim([20,37]);
ylim([0.12,0.136]);
grid on;
grid minor;
%% 3
% Plot for the Lateral acceleration for step input
clc;
clear sine_data_r
figure(4);
step_data_r = cell(1,21);
for i= [1,5,10]    % positive camber angles
    filename = ['csv\step\step',num2str(i),'neg.csv'];
    step_data_r{i} = importdata(filename);
    hold on;
    plot(step_data_r{i}(:,6),step_data_r{i}(:,4),'LineWidth',2);
    title(['step',num2str(i),'neg']);
 end
hold on
for j = [1,5,10]    % positive camber angles
    filename = ['csv\step\step',num2str(j),'pos.csv'];
    step_data_r{j+11} = importdata(filename);
    hold on;
    plot(step_data_r{j+11}(:,6),step_data_r{j+11}(:,4),'LineWidth',2);
    title(['step',num2str(j),'neg']);
 end
hold on
k=11;   % zero camber angles
filename = ['csv\step\step',num2str(0),'.csv'];
step_data_r{k} = importdata(filename);
plot(step_data_r{k}(:,6),step_data_r{k}(:,4),'LineWidth',2);
% lgd = legend('-1 deg','-5 deg','-10 deg','1 deg','5 deg','10 deg','0 deg');
% title(lgd,'Camber Angles')
legend("\gamma= -1\circ","\gamma= -5\circ","\gamma= -10\circ","\gamma= 1\circ","\gamma= 5\circ","\gamma= 10\circ", "neutral","Location","northeast");
xlabel('Time t [s]');
ylabel('Lateral acceleration a_y[m/s^2]');
title('Step Response: a_y vs t');
xlim([20,35]);
ylim([3,4]);
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
    hold on;
    plot(step_data_r{i}(:,6),step_data_r{i}(:,2)*180/pi,'LineWidth',2);
    title(['step',num2str(i),'neg']);
 end
hold on
for j = [1,5,10]    % positive camber angles
    filename = ['csv\step\step',num2str(j),'pos.csv'];
    step_data_r{j+11} = importdata(filename);
    hold on;
    plot(step_data_r{j+11}(:,6),step_data_r{j+11}(:,2)*180/pi,'LineWidth',2);
    title(['step',num2str(j),'neg']);
 end
hold on
k=11;   % zero camber angles
filename = ['csv\step\step',num2str(0),'.csv'];
step_data_r{k} = importdata(filename);
plot(step_data_r{k}(:,6),step_data_r{k}(:,2)*180/pi,'LineWidth',2);
% lgd = legend('-1 deg','-5 deg','-10 deg','1 deg','5 deg','10 deg','0 deg','Location','Southeast');
% title(lgd,'Camber Angles')
legend("\gamma= -1\circ","\gamma= -5\circ","\gamma= -10\circ","\gamma= 1\circ","\gamma= 5\circ","\gamma= 10\circ", "neutral","Location","Southeast");
xlabel('Time t [s]');
ylabel('Side slip angle \alpha [deg]');
title('Step Response: \alpha vs t');
xlim([20,37]);
%ylim([-6e-3,-3e-3]);
grid on
grid minor
%% Sine wave response in Yaw velocity (Yaw rate gain vs frequency (time))
clear all
figure(5)
clear sine_data_r
sine_data_r = cell(1,21);
for i = 10   % positive camber angles
    filename = ['csv\sinewave\sine',num2str(i),'neg.csv'];
    sine_data_r{i} = importdata(filename);
    hold on;
    plot(sine_data_r{i}(:,6),sine_data_r{i}(:,3),'LineWidth',1);
end
hold on;
i=11;   % zero camber angles
filename = ['csv\sinewave\sine',num2str(0),'.csv'];
sine_data_r{i} = importdata(filename);
plot(sine_data_r{i}(:,6),sine_data_r{i}(:,3),'LineWidth',1);
hold on;
%plot(sine_data_r{i}(:,6),sine_data_r{i}(:,2),'LineWidth',2);
for i = 21    % negative camber angles
    filename = ['csv\sinewave\sine',num2str(i-11),'pos.csv'];
    sine_data_r{i} = importdata(filename);
    hold on;
    plot(sine_data_r{i}(:,6),sine_data_r{i}(:,3),'LineWidth',1);
end
% lgd = legend('-1 deg','-5 deg','-10 deg','1 deg','5 deg','10 deg','0 deg');
% title(lgd,'Camber Angles')
legend("\gamma= -10\circ","\gamma= 0\circ","\gamma= 10\circ","Location","Southeast");
xlabel('Frequency [Hz]');
ylabel('Yaw rate gain [1/sec]');
title('Sinosoidal steering Response: Yaw velocity vs frequency');
grid on
grid minor
xlim([20,55]);
ylim([0 0.4]);
xticks([20 25 30 35 40 45 50 55]);
xticklabels({'f = 0.2','f = 0.5','f = 0.8','f = 1','f = 2','f = 3','f = 4','f = 5.5'});
[pks(:,1),locs(:,1)] = findpeaks(sine_data_r{10}([2001:5501],3));
[pks(:,2),locs(:,2)] = findpeaks(sine_data_r{11}([2001:5501],3));
[pks(:,3),locs(:,3)] = findpeaks(sine_data_r{21}([2001:5501],3));
gain_ratio(1) = max(pks(:,1))/pks(1,1);
gain_ratio(2) = max(pks(:,2))/pks(1,2);
gain_ratio(3) = max(pks(:,3))/pks(1,3);
%plotting the peaks of the data 
figure(6);
[curve1,~] = fit(locs(:,1),pks(:,1),'smoothingspline');
p1 = plot(curve1);
set(p1,'LineWidth',2,'Color',[0.6350 0.0780 0.1840]);
hold on
[curve2,~] = fit(locs(:,2),pks(:,2),'smoothingspline');
p2 = plot(curve2,'b');
set(p2,'LineWidth',2,'Color',[0 0.4470 0.7410]);
hold on
[curve3,~] = fit(locs(:,3),pks(:,3),'smoothingspline');
p3 = plot(curve3,'y');
set(p3,'LineWidth',2,'Color',[0.9290 0.6940 0.1250]);
grid on
grid minor
xlabel('Frequency [Hz]');
ylabel('Yaw rate gain ratio');
title('Yaw rate gain ratio vs frequency');
legend("\gamma= -10\circ","\gamma= 0\circ","\gamma= 10\circ","Location","Southeast");
xticks([0 500 1000 1500 2000 2500 3000 3500]);
xticklabels({'f = 0.2','f = 0.5','f = 0.8','f = 1','f = 2','f = 3','f = 4','f = 5.5'});





