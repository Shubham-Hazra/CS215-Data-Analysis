%CONSIDERING TWO POISSON RANDOM VARIABLES

%RANDOM VARIABLE X
lambda_x = 3;

%RANDOM VARIABLE Y
lambda_y = 4;

x = linspace(0,25,1000);

%PLOTTING X
plot(x,poissrnd(lambda_x,1000));
xlabel 'X values'
ylabel 'PDF values'
title 'POISSON PDF'
legend(lambda = lambda_x)
grid on

%DEFINE RANDOM VARIABLE Z: Z=X+Y
z = poissrnd(lambda_x,1000)+poissrnd(lambda_y,1000);