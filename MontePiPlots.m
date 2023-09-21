n_values = [10,100,500,1000,10000,100000];

execution_times = zeros(size(n_values));

for i = 1:length(n_values)
    n = n_values(i);
    tic;
    MontePi(n);
    execution_times(i) = toc;
end

figure;
plot(n_values, execution_times, '-o');
title('Execution Time against n');
xlabel('Number of Points');
ylabel('Execution Time');

approx = zeros(size(n_values));
abser = zeros(size(n_values));

for i = 1:length(n_values)
    n = n_values(i);
    [appro, abse, ~] = MontePi(n); 
    approx(i) = appro;
    abser(i) = abse;
end

figure;
plot(n_values, abser,'-o');
title("Absolute error against n");
xlabel("Number of points");
ylabel("Absolute Error");

fix_n = 180;
num = 0;
xin=[];
yin=[];
xout=[];
yout=[];

figure;
xlabel('x');
ylabel('y');
hold on;
for i = 1:fix_n
    x = rand();
    y = rand();
    if x^2+y^2 <=1
        num = num+1;
        xin = [xin x];
        yin = [yin y];
        scatter(xin,yin,10,"red","filled")
    else
        xout = [xout x];
        yout = [yout y];
        scatter(xout, yout, 10, "green", "filled")
    end

    title(string(i));
    drawnow
end

title("Pi Approximation is : ", num2str(4*num/fix_n))
