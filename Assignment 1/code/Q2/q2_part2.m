rng("default")

%DEFINING Y ANALYTICALLY
lambda_y = 4;
Y = poissrnd(lambda_y,1,100000);

%DEFINING PROBABILITY PARAMETER
p = 0.8;

%DEFINING THINNED Z
Z = binornd(Y,p);
h=histogram(Z);
z_bins = h.NumBins;
z1 = h.Values./100000;
Z_thin = zeros(1,26);
for i=1:z_bins
    Z_thin(i)=z1(i);
end
z=linspace(0,25,26);
plot(z,Z_thin,'bo-');
grid on 
xlabel 'K Values'
ylabel 'PMF Values'
title 'THINNED POISSON VARIABLE Z(ANALYTICAL)'

%THINNED Z THEORETICALLY
k = linspace(0,25,26);
z_t=exp(-lambda_y*p)*((lambda_y*p).^k)./factorial(k);

%PLOTTING THINNED THEORETICAL Z
plot(k,z_t,'bo-');
grid on 
xlabel 'K Values'
ylabel 'PMF Values'
title 'THINNED POISSON VARIABLE Z(THEORETICAL)'

%COMPARING THE TWO
hold on 
plot(z,Z_thin,'ro-');
legend('THEORETICAL','ANALYTICAL')
hold off

%PLOTTING THE DIFFERENCE
z_diff = Z_thin-z_t;
plot(z,z_diff);
grid on
xlabel 'K Values'
ylabel 'Difference in theoretical and analytical'
title 'DIFFERENCE'



