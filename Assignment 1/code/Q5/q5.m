
rng("default")
data_sizes = [5, 10, 20, 40, 60, 80, 100, 500, 1000, 10000];
 
%FOR UNIFORM DISTRIBUTION

%TRUE MEAN is 0.5

%COMPUTING AVERAGE
avg = zeros(100,length(data_sizes));
for i=1:length(data_sizes)
    for m = 1:100
        arr = rand(1,data_sizes(i));
        avg(m,i)=sum(arr)/data_sizes(i);
    end
end
error_avg = abs(avg -0.5);

%PLOTTING THE ERRORS
boxplot(error_avg);
xlabel 'Increasing data sizes'
ylabel 'Error from true mean'
title 'Uniform Distribution'
grid on


%FOR GAUSSIAN DISTRIBUTION

%TRUE MEAN GIVEN IS 0

%COMPUTING AVERAGE
gauss_avg = zeros(100,length(data_sizes));
for i=1:length(data_sizes)
    for m=1:100
        list = abs(normrnd(0,1,[1,data_sizes(i)]));
        list_norm = list./max(list(:));
        gauss_avg(m,i)=sum(list_norm)/data_sizes(i);
    end
end
error_avg_gauss = gauss_avg-0;

%PLOTTING THE ERRORS
boxplot(error_avg_gauss);
xlabel 'Increasing data sizes'
ylabel 'Error from true mean'
title 'Gaussian Distribution'
grid on
