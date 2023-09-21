function [appro, abse, rel] = MontePi(n)
    num = 0;
    for i = 1:n
        x = rand();
        y = rand();
        if (x^2+y^2)<=1
            num = num +1;
        end
    end

    appro = 4*num/n;
    abse = abs( pi - appro);
    rel = abse/ pi;

end