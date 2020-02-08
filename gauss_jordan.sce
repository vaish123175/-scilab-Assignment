clc

funcprot(0)   //if variables are redefined do nothing

format('v',10)

A = input("Enter a matrix[NxN]: ")



function gauss_jordan(A)

    

    n = length(A(1,:));

    aug = [A,eye(n,n)];

    

    //forward elimination

    for j=1:n-1

        for i=j+1:n

            aug(i,j:2*n) = aug(i,j:2*n) - aug(i,j)/aug(j,j)*aug(j,j:2*n)

        end

    end

    

    //backward elimination

    for j=n:-1:2

            aug(1:j-1,:) = aug(1:j-1,:) - aug(1:j-1,j)/aug(j,j)*aug(j,:)

    end

    

    //Diagonal Normalization

    for j=1:n

        aug(j,:) = aug(j,:) / aug(j,j);

    end

    

    B = aug(:,n+1:2*n);

    disp(B,'The Inverse of A is ');

    

endfunction
