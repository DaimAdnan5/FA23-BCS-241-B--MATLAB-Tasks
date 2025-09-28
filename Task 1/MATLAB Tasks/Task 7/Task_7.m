% task7_lottery_simulation.m
% Task 7: Simulate a Lottery Draw

clc;
clear;

% Define lottery parameters
totalNumbers = 49;   % Numbers from 1 to 49
numbersToPick = 6;   % Number of winning numbers

% Simulate lottery draw (random unique numbers)
winningNumbers = randperm(totalNumbers, numbersToPick);

% Sort numbers to resemble typical lottery output
winningNumbers = sort(winningNumbers);

% Display the winning numbers
disp('--- Lottery Draw Simulation ---');
disp(['Winning Numbers: ', num2str(winningNumbers)]);
