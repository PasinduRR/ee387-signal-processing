% sampling frequency 
Ts = 3;

% n = KTs
n = (0:Ts:70)';

% generate plot for part 1
x1n = cos(n*0.1);

subplot(3,3,1);
stem(n,x1n);
grid on;
xlabel('n');
ylabel('x_1n');


% generate plot for part 2
x2n = cos(n*pi/8);

subplot(3,3,2);
stem(n,x2n);
grid on;
xlabel('n');
ylabel('x_2n');

% generate plot for part 3
x3n = cos(n*pi/4);

subplot(3,3,3);
stem(n,x3n);
grid on;
xlabel('n');
ylabel('x_3n');

% generate plot for part 4
x4n = cos(n*pi/2);

subplot(3,3,4);
stem(n,x4n);
grid on;
xlabel('n');
ylabel('x_4n');


% generate plot for part 5
x5n = cos(n*pi);

subplot(3,3,5);
stem(n,x5n);
grid on;
xlabel('n');
ylabel('x_5n');

% generate plot for part 6
x6n = cos(n*pi*3/2);

subplot(3,3,6);
stem(n,x6n);
grid on;
xlabel('n');
ylabel('x_6n');

% generate plot for part 7
x7n = cos(n*pi*7/4);

subplot(3,3,7);
stem(n,x7n);
grid on;
xlabel('n');
ylabel('x_7n');


% generate plot for part 8
x8n = cos(n*pi*15/8);

subplot(3,3,8);
stem(n,x8n);
grid on;
xlabel('n');
ylabel('x_8n');


% generate plot for part 9
x9n = cos(n*pi*2);

subplot(3,3,9);
stem(n,x9n);
grid on;
xlabel('n');
ylabel('x_9n');
