% Define the input signals X[n] and h[n]
X = [1 1 1 1 1 0 0 0 0 0 0 0 0 0 0];
h = [2 4 8 16 32 64 0 0 0 0 0 0 0 0 0];

% Convolve X[n] and h[n] using the conv_disc function
y_conv_disc = conv_disc(X, h);

% Verify the result using MATLAB's conv command
y_conv_matlab = conv(X, h);

% Create the time axes for plotting
n_x = 0:length(X)-1;
n_h = 0:length(h)-1;
n_y = 0:length(y_conv_disc)-1;

% Plot the input signals and the output signals
subplot(4,1,1);
stem(n_x, X, 'b', 'filled'); % Plot X[n]
xlabel('n');
ylabel('Amplitude');
title('Input Signal X[n]');

subplot(4,1,2);
stem(n_h, h, 'r', 'filled'); % Plot h[n]
xlabel('n');
ylabel('Amplitude');
title('Impulse Response h[n]');

subplot(4,1,3);
stem(n_y, y_conv_disc, 'g', 'filled'); % Plot output signal from conv_disc
xlabel('n');
ylabel('Amplitude');
title('Output Signal (conv\_disc)');

subplot(4,1,4);
stem(n_y, y_conv_matlab, 'm', 'filled'); % Plot output signal from MATLAB's conv
xlabel('n');
ylabel('Amplitude');
title('Output Signal (conv)');

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
