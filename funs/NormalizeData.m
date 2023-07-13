function [ProcessData]=NormalizeData(X)

%作用：每一列样本的L2 Norm都将约等于1

[nFea,nSmp] = size(X);   %Fea为特征数,nSmp为样本数
for i = 1:nSmp
     ProcessData(:,i) = X(:,i) ./ max(1e-12,norm(X(:,i)));
end