% for bank system

xn = 1:5:100;
yn = bank_balance(xn); % get yn

% deconv to get hn - impulse response
hn = deconv(yn,xn);
display("Impulse response of banking system");
display(hn);

figure; % New figure for banking system

% plot xn
subplot(3,1,1);
stem(xn, 'Color', [0.8 0.2 0.2]); % Red color for X(n)
grid on;
title('X(n)');xlabel('n');ylabel('x(n)');

% plot yn
subplot(3,1,2);
stem(yn, 'Color', [0.2 0.8 0.2]); % Green color for y(n)
title('y(n)');xlabel('n');ylabel('y(n)');
grid on;

% plot hn
subplot(3,1,3);
stem(hn, 'Color', [0.2 0.2 0.8]); % Blue color for h(n)
title('h(n) = Impulse response of banking system');xlabel('n');ylabel('h(n)');
grid on;

% for merchant savings

xn = 1:5:100;
yn = merchant_savings(xn); % get yn
% deconv to get hn - impulse response
hn = deconv(yn,xn); 
display("Impulse response of merchant savings system");
display(hn);

figure; % New figure for merchant savings

% plot xn
subplot(3,1,1);
stem(xn, 'Color', [0.8 0.2 0.2]); % Red color for X(n)
grid on;
title('X(n)');xlabel('n');ylabel('x(n)');

% plot yn
subplot(3,1,2);
stem(yn, 'Color', [0.2 0.8 0.2]); % Green color for y(n)
title('y(n)');xlabel('n');ylabel('y(n)');
grid on;

% plot hn
subplot(3,1,3);
stem(hn, 'Color', [0.2 0.2 0.8]); % Blue color for h(n)
title('h(n) = Impulse response of merchant savings system');xlabel('n');ylabel('h(n)');
grid on;


function y = bank_balance(initial_balance)
  interest_rate = 0.01; % interest rate
  temp_balance = initial_balance(1); % store initial balance in a temporary variable
  y(1) = temp_balance * (1 + interest_rate); % first month's balance
  for i = 2:length(initial_balance)
    temp_balance = y(i - 1) + initial_balance(i); % update temporary balance
    y(i) = temp_balance * (1 + interest_rate); % generate balance for each month
  end
end

% M will be an array something like [100,10,0,0]
function y = merchant_savings(M)

  y(1) = M(1)/2; % first month's savings
  current_savings = y(1); % store the current savings
  
  % calculate next savings based on savings given and add the previous savings
  for i = 2:length(M)
    current_savings = current_savings + (M(i)/2); % update current savings
    y(i) = current_savings;
  end

end

