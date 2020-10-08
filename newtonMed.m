g = @(x) x - ((432*x^4 + 72*x^2 + 16*x + 4)*exp(1)-8*exp(6*x))/(16*exp(1)*(108*x^3+9*x+1)-48*exp(6*x));
numSteps = 20;
x = zeros(numSteps, 1);
x(1) = 0.3;
for i = 1:numSteps
    x(i + 1) = g(x(i));
end
r = x