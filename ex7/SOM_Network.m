clear ; close all; clc

a = 3;  %K������
b = 3;  %K������

%S = load(''); %the sharpness value
S = [10 20 100];
[m,n] = size(S);
w = rand(a * b, n); %w����
K = [1 : a * b];  %�����ʱ��������ʾ
alpha = 0.5;  %ѧϰ��
dist = zeros(a * b, 1); %ŷʽ����

S_Norm = S ./ sqrt(sum(S.^2));
w_Norm = w ./ sqrt(sum(w.^2));

for i = 1:100
    dist = sum((w_Norm - S_Norm) .^2, 2);
    [min_dist, ind] = min(dist);
    w_Norm(ind, :) = w_Norm(ind, :) + alpha * (S_Norm - w_Norm(ind, :));
    
end

