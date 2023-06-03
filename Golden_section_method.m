clear;
clf;
tolerance = 0.001;
lower_bound = -15;
upper_bound = 15;
x = lower_bound : 0.001 : upper_bound;
f_values = x .^ 4 + x .^ 3 - 4 * x .^ 2 + 5 * x - 1;
objective_function = @(x) x .^ 4 + x .^ 3 - 4 * x .^ 2 + 5 * x - 1;
plot(x, f_values, "Color", "ff4fca");
iterations_golden = 0;
while abs(upper_bound - lower_bound) > tolerance
a1 = ((lower_bound + upper_bound) / 2) - (tolerance / 2);
b1 = ((lower_bound + upper_bound) / 2) + (tolerance / 2);
if (objective_function(a1) > objective_function(b1))
lower_bound = ((lower_bound + upper_bound) / 2);
elseif (objective_function(a1) < objective_function(b1))
upper_bound = ((lower_bound + upper_bound) / 2);
else
lower_bound = ((lower_bound + upper_bound) / 2);
end
plot(lower_bound, objective_function(lower_bound), '*', "MarkerSize", 5);
plot(upper_bound, objective_function(upper_bound), '*', "MarkerSize", 5);
iterations_golden = iterations_golden + 1;
end
min_found = (lower_bound+ upper_bound) / (2 * iterations_golden);
hold off;
