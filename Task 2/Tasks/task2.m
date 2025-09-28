clc;
clear;
close all;


N = 1000;   
n = 10;     
p = 0.5;    


binomial_samples = sum(rand(N,n) < p, 2);

mu = n*p;                    
sigma = sqrt(n*p*(1-p));     
normal_samples = mu + sigma*randn(N,1);


mean_binomial = mean(binomial_samples);
var_binomial  = var(binomial_samples);

mean_normal = mean(normal_samples);
var_normal  = var(normal_samples);


fprintf('Binomial Sample Mean: %.2f, Variance: %.2f\n', mean_binomial, var_binomial);
fprintf('Normal Sample Mean: %.2f, Variance: %.2f\n', mean_normal, var_normal);


subplot(1,2,1);
histogram(binomial_samples,'FaceColor','r');
title('Binomial Samples');

subplot(1,2,2);
histogram(normal_samples,'FaceColor','b');
title('Normal Samples');
