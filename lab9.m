%% Analytical Approach
f = @(x) 1 - x - 4*x.^3 + 2*x.^5;
a = -2;
b = 4;
result = integral(f, a, b);
disp(result);
%% Single application of Trapezoid Rule
a = -2;
b = 4;
n = 1;
integral_approx = (b - a) / (2*n) * (f(a) + f(b));
disp(num2str(integral_approx))
%% Composite Trapezoid rule with n = 2
a = -2;
b = 4;
n = 2;
integral_approx = (b - a) / (2*n) * (f(a) + f(b));
disp(num2str(integral_approx))
%% Composite Trapezoid rule with n = 4
a = -2;
b = 4;
n = 4;
integral_approx = (b - a) / (2*n) * (f(a) + f(b));
disp(num2str(integral_approx))
%% Simpson's 1/3 Rule
a = -2;
b = 4;
n = 2;
h = (b - a) / n;
x = a:h:b;
y = f(x);
integral_value = (h / 3) * (y(1) + 4 * sum(y(2:2:end-1)) + 2 * sum(y(3:2:end-2)) + y(end));
disp(num2str(integral_value));
%% Simpson's 3/8 Rule
a = -2;
b = 4;
n = 3;
h = (b - a) / n;
integral_approx = (3 * h / 8) * (f(a) + 3*sum(f(a+h:h+h:b-h)) + 3*sum(f(a+2*h:2*h:b-2*h)) + f(b));
disp(num2str(integral_approx));
