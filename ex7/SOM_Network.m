clear ; close all; clc

a = 3;  %K的行数
b = 3;  %K的列数

%S = load(''); %the sharpness value
S = [10 20 100];
[m,n] = size(S);
w = rand(a * b, n); %w参数
K = [1 : a * b];  %类别，暂时用向量表示
alpha = 0.5;  %学习率
dist = zeros(a * b, 1); %欧式距离

S_Norm = S ./ sqrt(sum(S.^2));
w_Norm = w ./ sqrt(sum(w.^2));

for i = 1:100
    dist = sum((w_Norm - S_Norm) .^2, 2);
    [min_dist, ind] = min(dist);
    w_Norm(ind, :) = w_Norm(ind, :) + alpha * (S_Norm - w_Norm(ind, :));
    
end

