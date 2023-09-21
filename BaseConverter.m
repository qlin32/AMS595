%Question 1 base converter
%get base n
n = input("Enter an integer n from 2 to 10 :");

if floor(n) == n %check if n is an INTEGER between 2 to 10
    if (n<2 || n>10)
        error ("number is not in range")
    end
else
        error ("not an integer")
end

%get number in base n
num = input("Enter the number you want to convert in base-n :", "s");

%convert num to from base-n to base-10
num_convert = base2dec(num, n);

%get base m
m = input("Enter an integer m from 2 to 10 :");

if floor(m) == m %check if m is an INTEGER between 2 to 10
    if (m<2 || m>10)
        error ("number is not in range")
    end
else
        error ("not an integer")
end

%convert num from base-10 num to base m
num_final = dec2base(num_convert,m);

fprintf("Your number in base %d is: %s \n", m,num_final);