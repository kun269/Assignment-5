%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ESC 597 Assignment 5
% 10/6/2019
% Authors Gerald Boddie, Mecit Altan Alioglu, Keeley Naylor, Jia Zhu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% On a distant planet, in a galaxy far far away, a simple ballistics 
% experimentis conducted in which a marble is tossed up in the planet's air
% and the marble's position is recorded at discrete time values. The 
% experiment is repeated ten times. The data recorded are provided in a 
% file with 31 comma-separated columns.  The coordinate values are
% expressed in meters,and the z-coordinate is opposite to gravity. The 
% recorded data is somewhat noisy.


Open_A(); % opens the main data file and saves it as a matrix, A


% The owner of the repository will write the main file of the program along
% with the necessary code to read in the data, store it into A so that A 
% can be passed to each of the other functions to be developed as part of 
% the overall program. The owner of the repository will then create a 
% separate file containing a function accepting A as input. This function 
% will be called from the main file and it will output a plot of the 
% recorded trajectories.

Trajectories() % plots thetrajectories of each of the 10 trials


% Programmer 2 will compute the ensemble average of the marble's 
% coordinates as a function of time along with the corresponding variances. 
% Finally, the function will output two plots: the first depicting the 
% values of the average coordinates as a function of time, and the second 
% depicting the corresponding variances.

plot_Ave_Var() % plots the average position and variance of the data


% Programmer 3 will utilize a simple model with four parameters, namely 
% the components of the initial velocity and the value of the constant 
% acceleration. The function will then apply a fit to estimate the values
% of the four parameters. The function will output the values of said 
% parameters. Be sure to include also the calculation of the constant 
% value of the acceleration due to gravity. 

Fitfunc() % calculates four parameters of the marble model


% Programmer 4 will estimate the speed of the marble as a function of time
% for each experiment. The function will then plot the estimates for the
% speed as a functions of time.

VelocityCalculation() % plots spped vs. time for each trial
