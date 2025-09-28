% task4_coin_toss_simulation.m
% Task 4: Simulate Coin Tossing Using Random Number Generator

clc;
clear;

% Set number of tosses
numTosses = 100;

% Simulate coin tosses: 0 = Tails, 1 = Heads
coinTosses = randi([0, 1], numTosses, 1);

% Count number of heads and tails
numHeads = sum(coinTosses == 1);
numTails = sum(coinTosses == 0);

% Display results
disp(['Total Tosses: ', num2str(numTosses)]);
disp(['Heads: ', num2str(numHeads)]);
disp(['Tails: ', num2str(numTails)]);

% Optional: Plot the result
figure;
bar([numHeads, numTails]);
set(gca, 'XTickLabel', {'Heads', 'Tails'});
ylabel('Count');
title('Coin Toss Simulation');
