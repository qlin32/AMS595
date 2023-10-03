%Question 2 Gauss Elimination
%declare function
function x = GaussElim(A, b)
      %getting dimensions of A
      [n,m] = size(A);
      %check if A is a matrix
      if ~ismatrix(A)
          error("A is not a matrix")
      end
      %check if A is a square matrix
      if (n ~= m)
         error("A is not a square matrix")
      end
      
      %getting dimension of b
      v = size(b);
      %check if b is compatible with A
      if (v(1)~=n||v(2)~=1)
         error ("inconsistent dimension, vector b cannot be obtained from A using Gauss Elimination")
      end

    %augmented matrix
    new = [A, b];

    %pivoting
    for i = 1:n
        pivot = new(i,i);
        new(i,:) = new(i,:) / pivot;
        for j = i+1:n
            swap = new(j,i);
            %eliminate other rows
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
    