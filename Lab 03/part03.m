clear all;
close all;
 
omega = -20 : 0.1 : 20;
sigma = -5 : 0.1 : 5;
[sigmagrid, omegagrid] = meshgrid(sigma, omega);
sgrid = sigmagrid + 1i*omegagrid;
 
b = [2 2 17];
a = [1 4 104];
H1 = polyval(b, sgrid)./polyval(a, sgrid);
mesh(sigma, omega, 20*log10(abs(H1)));
xlabel('sigma');
ylabel('omega');
zlabel('abs(H1)');