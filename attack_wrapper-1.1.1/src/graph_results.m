% Created by Ryan Gross

% For simplicity, import data by opening the file in MATLAB, then changing
%   data variable reference, n, and x below.

data = results_partial_success_rate_all_1;
n = 20000;
x = 16;

x_axis = 0:x-1;
y_axis = zeros(n,x);
y_avg = zeros(x);

%for i = 1:n
    %y_axis(i,:) = transpose(table2array(data((i-1)*x+1:i*x,"Subkey_byte")));
    %y_avg(i) = mean(y_axis(i,:));
%end

%x_axis = 0:n-1;
y_axis = zeros(x,n);

for i = 1:x
    y_axis(i,:) = transpose(table2array(data((i-1)*n+1:i*n,"Subkey_byte")));
    y_avg(i) = mean(y_axis(i,:));
end

figure(1)
subplot(111)
plot(x_axis,y_avg)
axis([1 x 0 1])
xlabel('AES Key Byte Index')
ylabel('Subkey Partial Success Rate')