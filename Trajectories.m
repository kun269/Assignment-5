%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 5
% Part 3
% Keeley Naylor
% Programmer 1
% Input A and output recorded trajectories
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function Trajectories = Trajectories(A)

load('A.mat') % load input data

% the following defines the positions x, y, and z as funtions of their location in the matrix A
m = size(A);
x = ones(m(1,1),(m(1,2)-1)/30);
y = ones(m(1,1),(m(1,2)-1)/30);
z = ones(m(1,1),(m(1,2)-1)/30);
for i = 1:10 % for trials 1-10 it separates out the position data
    x(:,i) = A(:,3*(i-1)+2);
    y(:,i) = A(:,3*(i-1)+3);
    z(:,i) = A(:,3*(i-1)+4);
end

t = A(:,1); % time data

figure(1) % plot of all coordinates vs. time
hold on;
plot(t,x);
plot(t,y);
plot(t,z);
title('position vs. time')
xlabel('Time (s)')
ylabel('Position (m)')
legend('x','y','z') % define each plot based on color

%========================================================================%
% Extra Plots %

% figure1(2) % plot x over time (not in main function)
% plot(t,x)
% title('x position vs. time')
% xlabel('Time (s)')
% ylabel('Position (m)')

% figure(3) % plot y over time (not in main function)
% plot(t,y)
% title('y position vs. time')
% xlabel('Time (s)')
% ylabel('Position (m)')

% figure(4)  % plot z over time (not in main function)
% plot(t,z)
% title('z position vs. time')
% xlabel('Time (s)')
% ylabel('Position (m)')

end
