function [out] = perceptron(x1, x2, w1, w2, b)
    out = x1*w1 + x2*w2;
    dd=find(out>b);
    out = zeros(size(out));
    out(dd) = 1;
end