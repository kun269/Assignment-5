%% Assignment 5 from Grounp Ravi
%% Written by Jia Zhu
%% This part of codes is for plots of the average and variance of x, y,z coordicate with respect to time.
%% This function is used to accept input "A" and output two plots (Average and Variance of x, y, and z coordinate at each time interval). 
%% Just Use command line "Plot_Ave_Var" in the main script to call this function

function [ps] = plot_Ave_Var
format long

% load C:\Users\zoomk\Downloads\Assignment5Data.txt;
% A=Assignment5Data;

m=size(A)
% define a matrix to accept the x, y, and z coordinate separatly from the 10 tests. 
X_value=ones(m(1,1),(m(1,2)-1)/30)
Y_value=ones(m(1,1),(m(1,2)-1)/30)
Z_value=ones(m(1,1),(m(1,2)-1)/30)
for i=1:10
    X_value(:,i)=A(:,3*(i-1)+2)
    Y_value(:,i)=A(:,3*(i-1)+3)
    Z_value(:,i)=A(:,3*(i-1)+4)
end

% calculate average of x, y, and z coordinate at each time interval for the 10 tests.
Ave_X=mean(X_value,2)
Ave_Y=mean(Y_value,2)
Ave_Z=mean(Z_value,2)

% calculate variance of x, y, and z coordinate at each time interval for the 10 tests.
Var_X=var(X_value,0,2)
Var_Y=var(Y_value,0,2)
Var_Z=var(Z_value,0,2)

% plot 2 figures 
plot(A(:,1),Ave_X,A(:,1),Ave_Y,A(:,1),Ave_Z)
figure
plot(A(:,1),Var_X,A(:,1),Var_Y,A(:,1),Var_Z)
end