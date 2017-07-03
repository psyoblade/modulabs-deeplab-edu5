function [out] = perceptron_sigmoid(x1, x2, w1, w2, b)
    temp = x1*w1 + x2*w2 + b;
    out = 1 ./ (1 +exp(-temp));
end