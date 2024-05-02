L = 1;
Nx = 7;
dx = L / (Nx - 1);

A = zeros(Nx, Nx);
A(1, 1) = 2;
A(Nx, Nx) = 2;
A(Nx, Nx - 1) = -1;

for i = 2:Nx-1
    A(i, i - 1) = -1;
    A(i, i) = 2;
    A(i, i + 1) = -1;
    A(i - 1, i) = -1;
end

[V] = eig(A)

