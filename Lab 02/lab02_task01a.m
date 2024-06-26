% Define values for n
n = linspace(0, 2*pi, 50)';

% Define different values of B
Bs = [-2.5, -0.75, 0.75, 2.5];

% Create a new figure for subplots
figure;

% Loop through each value of B and plot in a subplot
for i = 1:length(Bs)
    % Calculate result for current B
    result = xnB(n, Bs(i));
    
    % Create subplot for current result
    subplot(length(Bs), 1, i);
    stem(n, result);
    title(['Plot of x[n] for B = ', num2str(Bs(i))]);
    xlabel('n');
    ylabel('x[n]');
    grid on;
end

function result = xnB(n, B)
    % generate the result as given in the equation
    result = 10 * (B .^ n);
    % Ensure that the result is real
    result = real(result);
end
