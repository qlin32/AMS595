%Question 3 part 1
%declare the function
function [appro, abse, rel] = MontePi(n)
    %num counts all points inside the circle
    num = 0;
    %dropping points n times
    for i = 1:n
        %getting random x y values for each point
        x = rand();
        y = rand();
        %increase num by 1 if point is inside the circle
        if (x^2+y^2)<=1
            num = num +1;
        end
    end
    
    %getting the pi approximation, absolute error, and relative error
    appro = 4*num/n;
    abse = abs( pi - appro);
    rel = abse/ pi;

end