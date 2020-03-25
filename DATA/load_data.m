% VX, Sideslip, Yaw rate, ay, Steer, Time
clear all

%loading step response data
step_data = cell(1,21);
for i = 1:10
    filename = ['csv\step\step',num2str(i),'neg.csv'];
    step_data{i} = importdata(filename);
end
filename = ['csv\step\step',num2str(0),'.csv'];
step_data{11} = importdata(filename);
for i = 12:21
    filename = ['csv\step\step',num2str(i-11),'pos.csv'];
    step_data{i} = importdata(filename);
end

%loading sine sweep data
sine_data = cell(1,21);
for i = 1:10
    filename = ['csv\sinewave\sine',num2str(i),'neg.csv'];
    sine_data{i} = importdata(filename);
end
filename = ['csv\sinewave\sine',num2str(0),'.csv'];
sine_data{11} = importdata(filename);
for i = 12:21
    filename = ['csv\sinewave\sine',num2str(i-11),'pos.csv'];
    sine_data{i} = importdata(filename);
end