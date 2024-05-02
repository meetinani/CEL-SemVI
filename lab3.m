clc;
%1-D steady state heat conduction using matlab matrix
n=4;
A = zeros(4,4)
for i=1:3
    A(i,i) = 2
    A(i,i+1) = -1
    A(i+1,i) = -1
    A(4,4) = 2
end
A_inv = inv(A)
B=[500 0 0 100]'
T=inv(A)*B
x=linspace(1,n,4);
plot(x,T)
xlabel('Distance(m)');
ylabel('Temperature(C)');
title('Temperature Distribtion')
