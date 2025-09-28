% task2_mean_variance.m
% Task 2: Calculate Mean and Variance of Age and Score

clc;
clear;

% Load the dataset from Task 1
load('studentData.mat');  % This loads the variable 'data'

% Calculate mean
meanAge = mean(data.Age);
meanScore = mean(data.Score);

% Calculate variance
varAge = var(data.Age);
varScore = var(data.Score);

% Display results
disp('--- Task 2: Mean and Variance ---');
disp(['Mean Age: ', num2str(meanAge)]);
disp(['Mean Score: ', num2str(meanScore)]);
disp(['Variance of Age: ', num2str(varAge)]);
disp(['Variance of Score: ', num2str(varScore)]);
