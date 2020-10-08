g = @(x) nthroot(x+2-exp(-x),3);
numSteps = 25;
x = zeros(numSteps,1);
x(1) = 1.5;
for i=1:numSteps
 x(i+1) = g(x(i));
end
r = x(numSteps + 1); %best guess at root
e = abs(x-r); % array of errors
ratios = zeros(numSteps + 1,1);
for i=1:numSteps
 ratios(i) = e(i+1)/e(i);
end
ratios(numSteps+1) = 0;
ratios