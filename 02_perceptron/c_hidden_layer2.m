%% Hidden Layer의 Parameter에 따른 결과값
[x1,x2] = meshgrid(-10:1:10);

a1=[];
a1{1} = perceptron_sigmoid(x1,x2, 1, -1, -0.3);
a1{2} = perceptron_sigmoid(x1,x2, 1, 0.2, 0.1);

a2=[];
a2{1} = perceptron_sigmoid(a1{1},a1{2}, randn(1), randn(1), randn(1));
a2{2} = perceptron_sigmoid(a1{1},a1{2}, 0.3, -0.2, 1);

a3=[];
a3{1} = perceptron_sigmoid(a2{1},a2{2}, 2, -0.5, -1.3);
a3{2} = perceptron_sigmoid(a2{1},a2{2}, -2, 1.5, 5);

z = [];
z = perceptron_sigmoid(a3{1},a3{2}, 0.1, 0.1, 0);

figure(33);
subplot(2,2,1);
surf(x1,x2,z);
xlabel('x1');ylabel('x2');zlabel('output');
