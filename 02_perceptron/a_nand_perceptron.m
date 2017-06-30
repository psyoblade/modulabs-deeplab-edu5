[x1,x2] = meshgrid(-10:1:10);

%% Perceptron으로 만든 NAND게이트
xx1 = [0 0 1 1];
xx2 = [0 1 0 1];
perceptron(xx1,xx2, -1, -1, -2)

%% NAND게이트 확인
nand_result = perceptron(x1,x2, -1, -1, -2)';
figure(1);
surf(x1,x2,nand_result);
xlabel('x1');ylabel('x2');zlabel('NAND');

%% Multi-Layer Perceptron으로 만든 XOR게이트
notx1 = perceptron(x1, x1, -1, -1, -2);
notx2 = perceptron(x2, x2, -1, -1, -2);
S1_ = perceptron(notx1, x2, -1, -1, -2);
S1 = perceptron(S1_,S1_, -1, -1, -2);

S2_ = perceptron(notx2, x1, -1, -1, -2);
S2 = perceptron(S2_,S2_, -1, -1, -2);

NS1 = perceptron(S1,S1, -1, -1, -2);
NS2 = perceptron(S2,S2, -1, -1, -2);

XOR = perceptron(NS1,NS2, -1, -1, -2);

figure(11);
surf(x1,x2,XOR);
xlabel('x1');ylabel('x2');zlabel('XOR');
