% Explicit method for 1-D steady state conduction
close all, clear all; clc;
% Input parameters
L = 100; %(m)
N = 6; %(No. of nodes)
dx = L/(N-1); % distance between consecutive nodes
tol = 1e-4; %(m)

% Domain Discretisation
T_new = zeros(N,1); % %Initialising the Domain

x = linspace(0,L,N); %x-coordinate

% Boundary Condition
for i=1:N
    T_new(1,1) = 100;
end

%Main Loop - Logic
error =1;iter=0;
while(error > tol)
     iter=iter+1;
        T = T_new;
        for i=2:N-1
            T_new(i) = (T(i+1) + T(i-1))/2;
        end
        error = max(max(abs(T-T_new)));
figure(2);
%plotting
     plot(T_new); shading flat;colorbar;
xlabel('position');
ylabel('Temperature (C)');
title('Tempertaure profile in 1D steady state heat conduction');
grid on;
end


