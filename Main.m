%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ESC 597 Assignment 5
% 10/6/2019
% Authors Gerald Boddie, Mecit Altan Alioglu, Keeley Naylor, Jia Zhu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This main file will call each function for the assignment and open the
% respective plots.

open Open_A.m;

load A.mat

run Trajectories.m

run plot_Ave_Var.m

run Fitfunc.m

run VelocityCalculation.m



