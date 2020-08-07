%% Initialize
clear;
close all;

%% Define variables and functions
% cost function J has defined as matlab function
% J(x) = 3*x.^2 + 0.5*x.^3 - 40*x +40*cos(pi*x);
x = 0:0.1:10;
J = Jx(x);
figure;
plot(x,J)
grid minor;
title('The cost function');
xlabel('x');
ylabel('J(x)');

% Consider the word length 8-bit. hence 255 contization levels
% bin = numbConv(x) - converts double variables into binary string
% x = binNumbInv(bin) - converts binary string into double value

numOfPop = 8;
pop = round(rand(1,numOfPop)*10,1);     % generate initial population
Jo = Jx(pop);
hold on;
plot(pop,Jo,'rv','MarkerSize',5,'LineWidth',2);

% Meting pool

csf = costF(Jo);
figure;
% stem(pop,csf)
prob_weight = csf/sum(csf);
bar(prob_weight)

% sort according to probability
[b,I] = sort(prob_weight,'descend');
% Roulet wheel mechanism
raoletNum = round(rand(1,numOfPop)*(numOfPop-1) + 1);
% selection
mating_pairs_pop = pop(I);
selected_pop = mating_pairs_pop(raoletNum);

% cross-over
new_pop = zeros(1,length(selected_pop));    % array for store new population

for p = 1:2:length(selected_pop)
    mother = selected_pop(p);
    father = selected_pop(p+1);
    
    mother_bin = numbConv(mother);
    father_bin = numbConv(father);
    
    crossover_point = 1 + round(rand(1,1)*4); % crossover will happen binary locations 1 to 5
    
    mother_bin_new = [ mother_bin(1:crossover_point) father_bin(crossover_point+1:end)];
    father_bin_new = [ father_bin(1:crossover_point) mother_bin(crossover_point+1:end)];
    
%     intermediate_pop = [binNumbInv(mother_bin_new) binNumbInv(father_bin_new)];
%     new_pop = [new_pop intermediate_pop];
    new_pop(p) = binNumbInv(mother_bin_new);
    new_pop(p+1) = binNumbInv(father_bin_new);
    

end

figure(1);plot(selected_pop,Jx(selected_pop),'go')



