%% Mixture of logistic regression
d = 2;
c = 4;
k = 4;
n = 500;
[X,t] = prmlt_chapter09.kmeansRnd(d,c,n);

model = prmlt_chapter14.mixLogitBin(X,t-1,k);
y = prmlt_chapter14.mixLogitBinPred(model,X);
prmlt_common.plotClass(X,y+1)