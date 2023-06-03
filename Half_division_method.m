clear all;
clf;
tolerance = 0.001;
lower_bound = -15;
upper_bound = 15;
x = lower_bound : 0.001 : upper_bound;
y = x .^ 4 + x .^ 3 - 4 * x .^ 2 + 5 * x - 1;
f = @(x) x .^ 4 + x .^ 3 - 4 * x .^ 2 + 5 * x - 1;
plot(x, y, "Color", "ff4fca");
iterations = 0;
while abs(upper_bound - lower_bound) > tolerance
x1 = upper_bound - (upper_bound - lower_bound) * 0.618;
x2 = lower_bound + (upper_bound - lower_bound) * 0.618;
if (f(x1) >= f(x2))
lower_bound = x1;
elseif (f(x1) < f(x2))
upper_bound = x2;
end
plot(lower_bound, f(lower_bound), "*", "MarkerSize", 5);
plot(upper_bound, f(upper_bound), "*", "MarkerSize", 5);
iterations = iterations + 1;
end
min_found = (lower_bound + upper_bound) / (2 * iterations);
hold off;
