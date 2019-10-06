%%
% ESC597 |Assignment 5
% 10/01/2019
% 6. part 
%Written by Mecit Altan Alioglu
%%

%{
clc
clear all
load Assignment5Data.txt
A= Assignment5Data;
% This part works for the standalone code. It was removed to work in the main code.
%}


for j=1:10
for i=2:141
    
V(i,j)=sqrt((A(i,3*j-1)-A(i-1,3*j-1))^2+(A(i,3*j)-A(i-1,3*j))^2+(A(i,3*j+1)-A(i-1,3*j+1))^2)/(A(i,1)-A(i-1,1));
% Velocity is approximated as displacement between two point divided by the
% time interval
%Displacement: (sqrt((Xi-Xi-1)^2+(Yi-Yi-1)^2+(Zi-Zi-1)^2)
%Time:(ti-ti-1)


end
end



for i=1:10
subplot(2,5,i)
c = polyfit(A(:,1),V(:,i),2); %Polynomial curve fitting is applied to estimate the velocity

Fline = polyval(c,A(:,1));
    plot(A(:,1),V(:,i)) %Approximated velocity is plotted
    hold on
    plot(A(:,1),Fline,'r--','LineWidth',2) %Estimation for velocity is plotted
    hold off
title(['Experiment ',num2str(i)])
xlabel('Time(s)')
ylabel('Velocity(m/s)')
legend('Approximate velocity','Estimated velocity')
end
    
    
