A = [ 1, 0, 1; 2, 2, 2; 3, 4, 5];
U=A;
disp(A,'The given matrix is A=')
m=det (U(1,1));
n=det (U(2,1));
a=n/m;
U(2,:)=U(2,:)-U(1,:)/(m/n);
n=det(U(3,1));
b=n/m;
U(3,:)=U(3,:)-U(1,:)/(m/n);
m=det(U(2,2));
n=det(U(3,2));
c=n/m;
U(3,:)=U(3,:)-U(2,:)/(m/n);
disp(U, 'the upper triangular matrix is U=')
L=[1,0,0; a,1,0 ; b,c,1];
disp(L,'the lower triangular matrix is L =')

