clear ; close all; clc
A = [1 2 3;4 5 6 ; 7 8 9];
B = rand(5,5);
savefile(A,'AA.txt');
savefile(B,'BB.txt');
save('A.txt','A','-ascii');
save('B.txt','B','-ascii');