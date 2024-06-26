clear all;

Ts=0.01; 
t= -5:Ts:5; 

y1 = ramp(t,1,3); 
y2 = ramp(t,1,1); 
y3 = ramp(t,1,0); 
y4 = ustep(t,-3); 

y = y1-2*y2+3*y3-y4; 

plot(t, y, 'k'); 
axis([-5 5 -1 7]); 
grid

function y = ramp(t, m, ad)
    % t: length of time
    % m: slope of the ramp function
    % ad: advance (positive), delay (negative) factor
    t = t(:)';
    % Initialize y
    y = zeros(size(t));
    % Find the indices where t >= -ad
    idx = find(t >= -ad);
    % Calculate ramp function
    y(idx) = m * (t(idx) + ad);
end

function y = ustep(t, ad)
    % t: length of time
    % ad: advance (positive), delay (negative) factor
    t = t(:)';
    y = zeros(size(t));
    % Find the indices where t >= -ad
    idx = t >= -ad;
    % Set the values to 1 where t >= -ad
    y(idx) = 1;
end
