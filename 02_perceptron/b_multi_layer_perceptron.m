%% Multi-Layer Perceptron 비선형성 확인
[x1,x2] = meshgrid(-10:1:10);

a1{1} = perceptron_sigmoid(x1,x2, 1, -1, -0.3);
a1{2} = perceptron_sigmoid(x1,x2, 1, 0.2, 0.1);

a2{1} = perceptron_sigmoid(a1{1},a1{2}, 0.2, -0.1, 0.2);
a2{2} = perceptron_sigmoid(a1{1},a1{2}, 0.1, 0.1, 1.1);

a3{1} = perceptron_sigmoid(a2{1},a2{2}, 2, -0.5, -1.3);
a3{2} = perceptron_sigmoid(a2{1},a2{2}, -2, 1.5, 5);

out = perceptron_sigmoid(a3{1},a3{2}, 0.1, 0.1, 0);

%% 첫번째 레이어 통과한 결과
figure(21);
surf(x1,x2,a1{1});
xlabel('x1'); ylabel('x2'); zlabel('1st hidden layer output');

figure(22);
surf(x1,x2,out);
xlabel('x1'); ylabel('x2'); zlabel('output');
