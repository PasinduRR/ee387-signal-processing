% Define the input signals x[n] and h[n]
n = 0:20; % Define the range of n
x = 0.5.^n .* (n >= 0); % x[n] = 0.5^n * u[n]
h = (n >= 0); % h[n] = u[n]

% Convolve x[n] and h[n] using the conv_disc function
y = conv_disc(x, h);

% Plot the input signals and the output signal
subplot(3,1,1);
stem(n, x, 'b', 'filled'); % Plot x[n]
xlabel('n');
ylabel('Amplitude');
title('Input Signal x[n]');

subplot(3,1,2);
stem(n, h, 'r', 'filled'); % Plot h[n]
xlabel('n');
ylabel('Amplitude');
title('Impulse Response h[n]');

% Create the time axis for the output signal
ny = 0:length(y)-1;

subplot(3,1,3);
stem(ny, y, 'g', 'filled'); % Plot the output signal
xlabel('n');
ylabel('Amplitude');
title('Output Signal y[n]');

function y = conv_disc(xn, hn)
    % Determine the lengths of xn and hn
    sizeX = length(xn);
    sizeH = length(hn);
    
    % Pad xn and hn with zeros to make their lengths equal to the sum of their original lengths minus one
    xn = [xn, zeros(1, sizeH - 1)];
    hn = [hn, zeros(1, sizeX - 1)];
    
    % Determine the size of the output
    out_size = sizeH + sizeX - 1;
    
    % Pre-allocate memory for the output array for efficiency
    y = zeros(1, out_size);
    
    % Perform convolution using nested loops
    for n = 1:out_size
        kmin = max(1, n - sizeH + 1);
        kmax = min(n, sizeX);
        for k = kmin:kmax
            y(n) = y(n) + xn(k) * hn(n - k + 1);
        end
    end
end

