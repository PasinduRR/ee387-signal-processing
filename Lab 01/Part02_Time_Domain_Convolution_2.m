f_s = 100;
T_s = 1/f_s;
t = [-5:T_s:5];

x4 = rect(t) + (1/2) * rect(t-1);
subplot(3,1,1);
plot(t,x4);
axis( [-2 2 -1 2]);
title ('Plot 1: A rectangular pulse');
xlabel( 'time (sec)' ) ;
ylabel( 'x_1(t)' ) ;
grid on;

x5 = rect(-t) + (1/2) * rect(-t-1); 
subplot(3, 1, 2);
plot(t,x5);
axis( [-2 2 -1 2]);
title ('Plot 2: time-delayed rectangular pulse');
xlabel( 'time (sec)' ) ;
ylabel( 'x_2(t)' ) ;
grid on;

x6 = rect(1-t) + (1/2) * rect(-t);
subplot(3, 1, 3);
plot(t,x6);
axis( [-2 2 -1 2]);
title ('Plot 3:  time-scaled rectangular pulse');
xlabel( 'time (sec)' ) ;
ylabel( 'x_3(t)' ) ;
grid on;

% Define rectangular pulse function
function x = rect(t)
    %
    % RECT rectangular pulse
    %
    % Usage: x = rect(t)
    %
    % This function takes in a vector t of sample instants and outputs the
    % corresponding rectangular pulse contained in the function x
    x = (abs(t) <= 0.5);
end