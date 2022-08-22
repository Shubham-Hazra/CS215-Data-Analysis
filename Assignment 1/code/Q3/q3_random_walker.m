% SIMULATING RANDOM WALKERS
rng('default');

%CREATING A MATRIX WHERE ROWS ARE STEPS TAKEN AND COLUMNS ARE DIFFERENT
%RANDOM WALKERS
N =(-1).^randi([0,1],10000,1000);
final = zeros(10000,1);
for i = 1:10000
    final(i)=sum(N(i,:))/1000;
end

%PLOTTING A HISTOGRAM OF FINAL LOCATION
h=histogram(final,40);
xlabel 'LOCATION'
ylabel 'NUMBER OF WALKERS'


%PLOTTING LOCATION VS TIME FOR FIRST 1000 WALKERS
x = linspace(0,25,1000);
steps = zeros(1000,1000);
for i=1:1000
    for j=1:1000
        t = N(i,:);
        steps(i,j)=sum(t(1:j))/1000;
    end
    plot(x,steps(i,:));
    hold on
end
xlabel 'TIME'
ylabel 'LOCATION'
title ''
grid on
hold off

%COMPUTED MEAN OF THE RANDOM WALKERS
mean=sum(final)/length(final);

%COMPUTED VARIANCE
final2 = (final-mean).^2;
variance  = sum(final2)/length(final2);

%SINCE WE KNOW THAT RANDOM WALKERS TEND TO A GAUSSIAN DISTRIBUTION
%FOR A LARGE SAMPLE SPACE:
%TRUE MEAN = 0
%TRUE VARIANCE = 0.001

%ERROR BETWEEN TRUE AND COMPUTED MEAN
mean_error = mean - 0;

%ERROR BETWEEN TRUE AND COMPUTED VARIANCE
var_error = 0.001 - variance;
