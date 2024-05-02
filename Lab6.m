x = [0,2,4,6,9,11,12,15,17,19];
y = [5,6,7,6,9,8,8,10,12,12];

P = polyfit(x,y,2);
scatter(x,y,'r');

y1 = P(3) + P(2) * x + P(1)*x.^2;
hold on;

plot(x,y1,'-b');
xlabel('x')
ylabel('y')
title('x v/s y')
grid on
