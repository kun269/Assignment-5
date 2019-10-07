%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 5 
% Part 4
% Jia Zhu
% Programmer 2
% This part of code is for plots of the average and variance of x, y,z coordinate with respect to time.
% This function is used to accept input "A" and output two plots (Average and Variance of x, y, and z coordinate at each time interval). 
% Just Use command line "plot_Ave_Var" in the main script to call this function
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = plot_Ave_Var(A)
format long

% load C:\Users\zoomk\Downloads\Assignment5Data.txt;
% A=Assignment5Data;
load('A.mat');

m=size(A);
% define a matrix to accept the x, y, and z coordinate separatly from the 10 tests. 
X_value=ones(m(1,1),(m(1,2)-1)/30);
Y_value=ones(m(1,1),(m(1,2)-1)/30);
Z_value=ones(m(1,1),(m(1,2)-1)/30);
for i=1:10
    X_value(:,i)=A(:,3*(i-1)+2);
    Y_value(:,i)=A(:,3*(i-1)+3);
    Z_value(:,i)=A(:,3*(i-1)+4);
end

% calculate average of x, y, and z coordinate at each time interval for the 10 tests.
Ave_X=mean(X_value,2);
Ave_Y=mean(Y_value,2);
Ave_Z=mean(Z_value,2);

% calculate variance of x, y, and z coordinate at each time interval for the 10 tests.
Var_X=var(X_value,0,2);
Var_Y=var(Y_value,0,2);
Var_Z=var(Z_value,0,2);

% plot 2 figures 
figure(2)
plot(A(:,1),Ave_X,A(:,1),Ave_Y,A(:,1),Ave_Z)
title ('Average vs. Time')
xlabel ('Time (s)')
ylabel ('Averages (m)')
legend ('x','y','z')

figure(3)
plot(A(:,1),Var_X,A(:,1),Var_Y,A(:,1),Var_Z)
title ('Variance vs. Time')
xlabel ('Time (s)')
ylabel ('Variance')
legend ('x','y','z')
end
