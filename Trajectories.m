%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 5
% Part 3
% Input A and output recorded trajectories
% Keeley Naylor
% Programmer 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t = A(:,1); % time data
x = A(:,[2,5,8,11,14,17,20,23,26,29]); % x positions
y = A(:,[3,6,9,12,15,18,21,24,27,30]); % y positions
z = A(:,[4,7,10,13,16,19,22,25,28,31]); % z positions


figure(1) % combine all position plots 
hold on
plot(t,x)
plot(t,y)
plot(t,z)
title('position vs. time')
xlabel('Time (s)')
ylabel('Position')

legend('x','y','z') % define each plot based on color

% figure(2) % plot x over time (not in main function)
% plot(t,x)
% title('x position vs. time')
% xlabel('Time (s)')
% ylabel('Position')

% figure(3) % plot y over time (not in main function)
% plot(t,y)
% title('y position vs. time')
% xlabel('Time (s)')
% ylabel('Position')

% figure(4)  % plot z over time (not in main function)
% plot(t,z)
% title('z position vs. time')
% xlabel('Time (s)')
% ylabel('Position')
