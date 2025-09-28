% task3_plot_histograms.m
% Task 3: Plot Histograms of Age and Score

clc;
clear;

% Load the dataset
load('studentData.mat');  % This loads the variable 'data'

% Plot histogram of Age
figure;
histogram(data.Age);
title('Histogram of Age');
xlabel('Age');
ylabel('Frequency');

% Plot histogram of Score
figure;
histogram(data.Score);
title('Histogram of Score');
xlabel('Score');
ylabel('Frequency');
