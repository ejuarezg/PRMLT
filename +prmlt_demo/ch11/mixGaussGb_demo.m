%% Collapse Gibbs sampling for Dirichelt process gaussian mixture model
close all;
clear;
rng(38);
d = 2;
k = 3;
n = 500;
[X, z] = prmlt_chapter09.mixGaussRnd(d, k, n);
figure;
prmlt_common.plotClass(X, z);

%% Training
[z, Theta, w, llh] = prmlt_chapter11.mixGaussGb(X);
figure;
prmlt_common.plotClass(X, z);

%% Testing
[X2, z2] = prmlt_chapter11.mixGaussSample(Theta, w, n);
figure;
prmlt_common.plotClass(X2, z2);
