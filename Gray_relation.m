function ret=Gray_relation(Y,X)
%Y represents a parent sequence, or dependent variable
%X represents a subsequence, or independent variable

%% Variable preprocessing
Y = Y./mean(Y);
X = X./mean(X);
%% |X-Y|matrix calculation
absY_X = abs(X - Y);
%% calculate the Grey correlation coefficient
a = min(min(absY_X));  %Calculate the minimum difference a between the two levels
b = max(max(absY_X));  %Calculate the maximum difference a between the two levels
rho = 0.5;             % The resolution coefficient is 0.5
gram = (a+rho*b) ./ (absY_X  + rho*b);  % 计算子序列中各个指标与母序列的关联系数
ret = mean(gram);
end