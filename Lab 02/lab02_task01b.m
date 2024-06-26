% sampling frequency 
Ts = 5;

% part 1

% t to plot continuous time signals
t1 = 0:0.01:70;
% n = KTs
n1 = 0:Ts:70;

% generate X(t)
xt1 = cos(t1*2*pi/12);
% generate X(n) 
xn1 = cos(n1*2*pi/12);

% part 2

% t to plot continuous time signals
t2 = 0:0.01:100;
% n = KTs
n2 = 0:Ts:100;

% generate X(t)
xt2 = cos(t2*8*pi/31);
% generate X(n) 
xn2 = cos(n2*8*pi/31);

% Plot both signals in subplots
figure;

% Subplot 1
subplot(2,1,1);
plot(t1,xt1,'linewidth',1.5);
hold on;
stem(n1,xn1);
grid on;
title('Plot of x_n and its sampled signal part 1')
legend('X(t)','X(n)');

% Subplot 2
subplot(2,1,2);
plot(t2,xt2);
hold on;
stem(n2,xn2);
grid on;
title('Plot of x_n and its sampled signal part 2')
legend('X(t)','X(n)');
