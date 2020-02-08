clc
clear
A=[2,-3,0;4,-5,1;2,-1,-3];
 b= [3;7;5];
 
 A_aug=[A b]

 a=A_aug
 n=3;


for j=1:n-1
    for i=j+1:n
        a(i,j:n+1)=a(i,j:n+1)-a(i,j)/a(j,j)*a(j,j:n+1);
        end
end
x=zeros(n,1);
x(n)=a(n,n+1)/a(n,n);
for i=n-1:-1:1
    x(i)=(a(i,n +1)-a(i,i +1:n)*x(i +1:n))/a(i,i);
end
disp(x(3),x(2),x(1),'the values of x,y,z are')
