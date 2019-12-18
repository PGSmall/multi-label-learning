%
% Code by PGSmall
% https://github.com/PGSmall/multi-label-learning
%% Calculate ranks for each algorithm
clear;clc
load data_for_cd.mat;  % data (mean ± std. error)
data = HL(:,1:2:16);
smaller = 1; % the smaller, the better. i.e. Hamming Loss.
if smaller == 1
    data = 1- data;
end
for i = 1:size(data,1)
    [num,idx] = sort(data(i,:),'descend');
    un_num = unique(num);
    count = 1;
    for j = 1:length(un_num)
        pos = length(un_num)+1-j;
        un_idx = find(num==un_num(pos));
        rank(count:count+length(un_idx)-1) = mean(un_idx);
        count = count + length(un_idx);
    end
    final_rank(i,idx) = rank;
end

%% Plot CD
% your code 

