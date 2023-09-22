%assigning variables
n_values = [10,100,500,1000,10000,100000];
execution_times = zeros(size(n_values));

%execution time for each n
for i = 1:length(n_values)
    n = n_values(i);
    tic;
    MontePi(n);
    execution_times(i) = toc;
end

%1st plot: execution time against n
figure;
plot(n_values, execution_times, '-o');
title('Execution Time against n');
xlabel('Number of Points');
ylabel('Execution Time');
saveas (gcf,"1st_plot.png")

approx = zeros(size(n_values));
abser = zeros(size(n_values));

%calculating pi approximation and absolute error
for i = 1:length(n_values)
    n = n_values(i);
    [appro, abse, ~] = MontePi(n); 
    approx(i) = appro;
    abser(i) = abse;
end

%2nd plot: absolute error against n
figure;
plot(n_values, abser,'-o');
title("Absolute error against n");
xlabel("Number of points");
ylabel("Absolute Error");
saveas (gcf,"2nd_plot.png")


%setting fixed n and counter num
fix_n = 180;
num = 0;
xin=[];
yin=[];
xout=[];
yout=[];

%3rd plot: plotting the points while they're generated
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
saveas (gcf,"3rd_plot.png")

