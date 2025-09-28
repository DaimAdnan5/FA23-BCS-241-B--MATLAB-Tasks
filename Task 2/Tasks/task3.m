clc;
clear;
close all;
N = 10000;  
p = 0.5;     
flips = rand(1,N) < p;  
p_heads = mean(flips);
fprintf('Estimated Probability of Heads = %.4f (True = %.2f)\n', p_heads, p);

N = 10000;   
q = 0.1;     


losses = rand(1,N) < q;  

loss_rate = mean(losses);
delivered = N - sum(losses);

fprintf('Packets Sent: %d\n', N);
fprintf('Packets Lost: %d\n', sum(losses));
fprintf('Packets Delivered: %d\n', delivered);
fprintf('Estimated Loss Rate = %.4f (True = %.2f)\n', loss_rate, q);

bar([sum(losses) delivered]);
set(gca,'XTickLabel',{'Lost','Delivered'});
ylabel('Number of Packets');
title('Packet Loss Simulation');

