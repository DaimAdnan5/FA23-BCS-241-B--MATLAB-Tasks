% Task 1.m
% Importing a dataset in MATLAB

clc;
clear;

% Import dataset from a CSV file
data = readtable('students.csv');

% Display the dataset
disp('Imported Dataset:');
disp(data);

% Show variable names and first few rows
disp('Variable Names:');
disp(data.Properties.VariableNames);

disp('First Few Rows:');
head(data);

% Access specific data
names = data.Name;
firstRow = data(1, :);
secondScore = data.Score(2);

% Display accessed data
disp('Names:');
disp(names);

disp('First Row:');
disp(firstRow);

disp(['Second student''s score: ', num2str(secondScore)]);

% Save the dataset
save('studentData.mat', 'data');
