%constant step size
ReturnVal = SolveMNIST_Gradient(0.0001, 5000, 0.0001, 1, 0);
%golden section
ReturnVal = SolveMNIST_Gradient(0.0001, 5000, 0.0001, 1, 1);

%%plot the figures
%%plot constant figure
figure1 = figure;
load('function_value_iteration_constant_iteration_5000.mat');
plot(1:5000, fcn_val_iter(1:5000));
xlabel('Iterations');
ylabel('Function value');
title('Constant step size = 0.001');
%%plot two curves on one figure
num_steps = 100;%note num_steps dont't exceed the total iteration of any algorithm
figure2 = figure;
load('function_value_iteration_goldensection_iteration_5000.mat')
plot(1:num_steps, fcn_val_iter(1:num_steps));
hold on;
load('function_value_iteration_constant_iteration_5000.mat');
plot(1:num_steps, fcn_val_iter(1:num_steps));
legend('golden section method', 'constant step size')
xlabel('Iterations');
ylabel('Function value');
title('Two method in 100 iterations');