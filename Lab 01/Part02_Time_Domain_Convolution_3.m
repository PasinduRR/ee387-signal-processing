y = conv(x1,x1);
close all;
%plot ( t, y);

length(y)
length(t)

t_y = -10:T_s:10;

plot( t_y, y);

y1 = T_s*conv(x1,x1);
plot(t_y, y1);
axis( [-2 2 -1 2] ) ;
xlabel( 'time (sec)');
ylabel('y_1(t)');
title('Figure : y_1(t) = x_1(t)*x_1(t)');