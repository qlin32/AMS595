%Question 2 Gauss Elimination
%declare function

function x = GaussElim(A, b)
      [n,m] = size(A);
      if (n ~= m)
         error("A is not a square matrix")
      end

      v = size(b);
      if (v(1)~=1||v(2)~=n)
         error ("inconsistent dimension, vector b cannot be obtained from A using Gauss Elimination")
      end


    new = [A, b.'];

    for i = 1:n
        pivot = new(i,i);
        new(i,:) = new(i,:) / pivot;
        for j = i+1:n
            swap = new(j,i);
            new(j,:) = new (j,:)-swap*new(i,:);
        end
    end

    %back substitution
    x = zeros(n,1);
    for i = n:-1:1
        x(i) = new(i,n+1);
        for j = i+1:n
            x(i) = x(i)-new(i,j)*x(j);
        end
    end


end
    