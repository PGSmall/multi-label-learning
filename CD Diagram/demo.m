clear;clc
load ranks_of_alg.mat
labels = {'MLkNN','MLNB','LIFT','LLSF-DL','MLFC','Ours'};
alpha = 0.05;
cd = cd_diagram(s,labels,alpha);
