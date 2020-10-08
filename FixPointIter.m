g = @(x) exp(-x);
numSteps = 20;
x = zeros(numSteps, 1);
x(1) = 0.5;
for i=1:numSteps
    x(i+1) = g(x(i));
end
x