# Grey Relation Analysis (GRA)

## what is GRA

Grey relational analysis is a method of multi-factor statistical analysis. Its basic idea is to judge whether the connection is close according to the similarity of the geometric shape of the sequence curve. The closer the curves are, the greater the correlation between the corresponding sequences, and vice versa.

+++

## Why GRA

In general abstract systems such as social system, economic system, agricultural system, and ecological system, there are many factors, and the result of the combined action of many factors determines the development trend of the system. When analyzing major and minor factors, system analysis is often used.

Regression analysis, analysis of variance, principal component analysis, etc. are all methods of systematic analysis using mathematical statistics. But these methods have the following shortcomings:

1) A large amount of data is required to improve accuracy;
2) The sample is required to obey a typical probability distribution, or the data of each factor and the characteristic data of the system are required to have a linear relationship and the factors are independent of each other;
3) Large amount of calculation;
4) There may be discrepancies between the quantitative results and the qualitative analysis results, leading to distortion and inversion of system relationships and laws;

In summary, in view of the limited data, the large grayscale of the existing data, human factors, moreover, many numbers do not have a typical distribution law. Therefore, the methods of mathematical statistics are often difficult to work.

GRA makes up for the shortcomings of systematic analysis using mathematical statistics. GRA regardless of the size of the sample and whether regular or not. It is also applicable to various types of data. The calculation is small, convenient and fast, and there will be no discrepancies between the quantitative results and the targeted analysis.

+++

## Operation steps and its principles

``` matlab
function ret=Gray_relation(Y,X)
%Y represents a parent sequence, or dependent variable
%X represents a subsequence, or independent variable

%% Variable preprocessing
% normalization
Y = Y./mean(Y);
X = X./mean(X);
%% |X-Y|matrix calculation
absY_X = abs(X - Y);
%% calculate the Grey correlation coefficient
a = min(min(absY_X));  %Calculate the minimum difference a between the two levels
b = max(max(absY_X));  %Calculate the maximum difference a between the two levels
rho = 0.5;             % The resolution coefficient is 0.5
gram = (a+rho*b) ./ (absY_X  + rho*b);  % Calculate the correlation coefficient between each index in the sub-sequence and the parent sequence
ret = mean(gram);
end
```

+++
