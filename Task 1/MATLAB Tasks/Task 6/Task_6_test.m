% task6_test_perm_comb.m
% Task 6: Test Permutation and Combination Functions

clc;
clear;

n = 5;
r = 3;

p = permutation(n, r);
c = combination(n, r);

disp(['P(', num2str(n), ', ', num2str(r), ') = ', num2str(p)]);
disp(['C(', num2str(n), ', ', num2str(r), ') = ', num2str(c)]);
