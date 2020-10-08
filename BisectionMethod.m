f = @(x) x^5+x-1
numSteps=10;
a=0;
b=1;
for i=1:numSteps
    c=(a+b)/2;
    if f(a)*f(c) < 0
        b=c;
    else
        a=c;
    end
end
c=(a+b)/2

