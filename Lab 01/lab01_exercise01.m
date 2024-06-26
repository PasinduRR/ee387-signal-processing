% Define the signals
x1 = [1, 2, 4];
h1 = [1, 1, 1, 1, 1];

x2 = [1, 2, 3, 4, 5];
h2 = [1];

x3 = [1, 2, 0, 2, 1];
h3 = [1, 2, 0, 2, 1];

% Perform convolution
y1 = conv(x1, h1);
y2 = conv(x2, h2);
y3 = conv(x3, h3);

% Plot the signals and convolution results
figure;

% Subplot for x1(n)
subplot(3, 3, 1);
stem(0:length(x1)-1, x1);
title('x1(n)');
xlabel('n');
ylabel('Amplitude');

% Subplot for h1(n)
subplot(3, 3, 2);
stem(0:length(h1)-1, h1);
title('h1(n)');
xlabel('n');
ylabel('Amplitude');

% Subplot for y1(n)
subplot(3, 3, 3);
stem(0:length(y1)-1, y1);
title('y1(n)');
xlabel('n');
ylabel('Amplitude');

% Subplot for x2(n)
subplot(3, 3, 4);
stem(0:length(x2)-1, x2);
title('x2(n)');
xlabel('n');
ylabel('Amplitude');

% Subplot for h2(n)
subplot(3, 3, 5);
stem(0:length(h2)-1, h2);
title('h2(n)');
xlabel('n');
ylabel('Amplitude');

% Subplot for y2(n)
subplot(3, 3, 6);
stem(0:length(y2)-1, y2);
title('y2(n)');
xlabel('n');
ylabel('Amplitude');

% Subplot for x3(n)
subplot(3, 3, 7);
stem(0:length(x3)-1, x3);
title('x3(n)');
xlabel('n');
ylabel('Amplitude');

% Subplot for h3(n)
subplot(3, 3, 8);
stem(0:length(h3)-1, h3);
title('h3(n)');
xlabel('n');
ylabel('Amplitude');

% Subplot for y3(n)
subplot(3, 3, 9);
stem(0:length(y3)-1, y3);
title('y3(n)');
xlabel('n');
ylabel('Amplitude');
