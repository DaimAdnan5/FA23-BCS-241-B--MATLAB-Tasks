clc;
clear;
close all;

lambda = 5;
T = 100;

arrivals = zeros(1,T);
for i = 1:T
    L = exp(-lambda);
    k = 0;
    p = 1;
    while p > L
        k = k + 1;
        p = p * rand;
    end
    arrivals(i) = k - 1;
end

figure;
stem(1:T, arrivals, 'r','LineWidth',1.5);
xlabel('Time Unit');
ylabel('Number of Arrivals');
title(sprintf('Packet Arrivals per Time Unit (Poisson, \\lambda = %d)', lambda));
grid on;

avg_arrival = mean(arrivals);
var_arrival = var(arrivals);

fprintf('Average arrivals per unit time: %.2f\n', avg_arrival);
fprintf('Variance of arrivals: %.2f\n', var_arrival);
