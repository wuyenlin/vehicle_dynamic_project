% 1:VX, 2:Sideslip, 3:Yaw rate, 4:ay, 5:Steer, 6:Time
clear all


%loading step response data
figure(1)
tiledlayout(3,7)
step_data = cell(1,21);
for i = 1:10
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
i=11;
filename = ['csv\step\step',num2str(0),'.csv'];
step_data{i} = importdata(filename);
nexttile
hold on
plot(step_data{i}(:,6),step_data{i}(:,2))
plot(step_data{i}(:,6),step_data{i}(:,3))
plot(step_data{i}(:,6),step_data{i}(:,4))
plot(step_data{i}(:,6),step_data{i}(:,5))
title(['step',num2str(0)])
for i = 12:21
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
for i = 1:10
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
filename = ['csv\sinewave\sine',num2str(0),'.csv'];
sine_data{11} = importdata(filename);
nexttile
hold on
plot(sine_data{i}(:,6),sine_data{i}(:,2))
plot(sine_data{i}(:,6),sine_data{i}(:,3))
plot(sine_data{i}(:,6),sine_data{i}(:,4))
plot(sine_data{i}(:,6),sine_data{i}(:,5))
title(['sine',num2str(0)])
for i = 12:21
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