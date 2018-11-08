load('function_value_iteration_iteration=5000_goldensection.mat')
plot(1:100, fcn_val_iter(1:100));
hold on;
load('function_value_iteration.mat');
plot(1:100, fcn_val_iter(1:100));
legend('golden section method', 'constant step size')
xlabel('Iterations');
ylabel('Function value');
title('Two method in 100 iterations');