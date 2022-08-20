%FUNCTION TO COMPUTE VARIANCE

function var=variance(x,y,a,b,n)
rng('default');
t = x.*y;
k = reimann_sum(t,a,b,n); %USING THE FUNCTION REIMANN_SUM TO CALCULATE MEAN
mean = k(n);
f = (x.^2).*y;            %TAKING SQUARE OF THE OBSERVATIONS
l = reimann_sum(f,a,b,n); %USING THE FUNCTION REIMANN_SUM TO CALCULATE MEAN
                          %OF THE SQUARE OF THE OBSERVATIONS
sum = l(n);
var = sum - mean^2;
