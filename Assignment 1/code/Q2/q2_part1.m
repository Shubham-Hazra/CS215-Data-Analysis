%CONSIDERING TWO POISSON RANDOM VARIABLES

rng("default")

%RANDOM VARIABLE X
lambda_x = 3;

%RANDOM VARIABLE Y
lambda_y = 4;

%DEFINING X ANALYTICALLY
X = poissrnd(lambda_x,1,1000000);

%PLOTTING X
x=histogram(X);
x_bins = x.NumBins;
X_ = x.Values./1000000;
x_ = linspace(0,x_bins,x_bins);
plot(x_,X_);
grid on
xlabel 'K values'
ylabel 'PMF values'
title 'POISSON RANDOM X(ANALYTICAL)'
x1 =  zeros(1,26);
for i=1:x_bins
    x1(i)=X_(i);
end

%DEFINING Y ANALYTICALLY
Y = poissrnd(lambda_y,1,1000000);

%PLOTTING Y
y=histogram(Y);
y_bins = y.NumBins;
Y_ = y.Values./1000000;
y_ = linspace(0,y_bins,y_bins);
plot(y_,Y_);
grid on
xlabel 'K values'
ylabel 'PMF values'
title 'POISSON RANDOM Y(ANALYTICAL)'
y1 =  zeros(1,26);
for i=1:y_bins
    y1(i)=Y_(i);
end

%DEFINING Z ANALYTICALLY
Z = zeros(1,26);
for i=1:26
    for j=1:i
        Z(i)=Z(i)+x1(j)*y1(i-j+1);
    end
end

z = linspace(0,25,26);

%PLOTTING Z
plot(z,Z);
grid on
xlabel 'K Values'
ylabel 'PMF Values'
title 'POSSION RANDOM Z(ANALYTICAL)'

%DEFINING Z THEORETICALLY
%DEFINING LAMBDA Z AS THE SUM OF LAMBDA X AND LAMBDA Y 
lambda_z = lambda_x+lambda_y;
z= linspace(0,25,26);
Z_= (lambda_z.^z)*exp(-lambda_z)./factorial(z);

%PLOTTING Z
plot(z,Z_,'bo-');
grid on
xlabel 'K values'
ylabel 'PMF values'
title 'POISSON RANDOM Z(THEORETICAL)'

%COMPARING THE TWO
plot(z,Z_,'bo-');
xlabel 'K values'
ylabel 'PMF values'
title 'POISSON RANDOM Z COMPARISON'
hold on
plot(z,Z);
legend('THEORETICAL','ANALYTICAL');
hold off

%PLOTTING THE DIFFERENCE
Z_diff = Z-Z_;
plot(z,Z_diff);
grid on
xlabel 'K Values'
ylabel 'Difference in theoretical and analytical'
title 'DIFFERENCE'

