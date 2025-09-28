clc;
clear;
close all;


n = 10;      
p = 0.5;     
mu = n*p;    
sigma = sqrt(n*p*(1-p)); 


x = 0:n;
y_discrete = nchoosek(n,x(1)); 
y_discrete = arrayfun(@(k) nchoosek(n,k)*p^k*(1-p)^(n-k), x);


x_cont = 0:0.1:10;
y_cont = (1/(sigma*sqrt(2*pi))) * exp(-(x_cont-mu).^2/(2*sigma^2));


stem(x,y_discrete,'r','LineWidth',1.5); 
hold on;
plot(x_cont,y_cont,'b','LineWidth',1.5); 
legend('Discrete (Binomial)','Continuous (Normal)');
title('Discrete vs Continuous Distribution');
