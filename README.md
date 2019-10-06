# Assignment-5
Penn State University ESC 597 - Fall 2019

Premise:
On a distant planet, in a galaxy far far away, a simple ballistics experiment is conducted
in which a marble is tossed up in the planet's air and the marble's position is recorded at
discrete time values. The experiment is repeated (identically) ten times. The data recorded
are provided in a file with 31 comma-separated columns. Time is in the rst column and is
reported in seconds. Columns 3i 􀀀 1, 3i, and 3i + 1 (i = 1; : : : ; 10) report the value of the
x, y, and z coordinates of the marble, respectively, for the i-th experiment. The coordinate
values are expressed in meters. The coordinate system is Cartesian with its origin placed at
the point of release of the marble. Said coordinate system is fixed on the planet's surface,
and the z-coordinate is opposite to gravity. The recorded data is somewhat noisy.


Assignment:
Write a Matlab program to analyze the data following the steps indicated below.

1. Think of your team as a team of computer programmers. Each programmer will have
a specific task to contribute to an overall program.

2. As a team, agree on the data structure that will contain the data once read into the
program. For the sake of simplicity, let the container of the data be \A" (you are free
to choose any name you like).

3. One member of the team will then set up a Git repository for the project and invite the
other members of the team as collaborators. Furthermore, the owner of the repository
will write the main file of the program along with the necessary code to read in the
data, store it into A so that A can be passed to each of the other functions to be
developed as part of the overall program. The owner of the repository will then create
a separate file containing a function accepting A as input. This function will be called
from the main file and it will output a plot of the recorded trajectories.

4. Programmer 2 in the team will create a separate file containing a function accepting
A as input. This function will be called from the main file and it will treat the x,
y, and z coordinates of the marble as independent random variables. The function
will compute the ensemble average of the marble's coordinates as a function of time
along with the corresponding variances (again for each coordinate and as a function of
time). Finally, the function will output two plots: the first depicting the values of the
average coordinates as a function of time, and the second depicting the corresponding
variances.

5. Programmer 3 in the team will create a separate file containing a function accepting
A as input. This function will be called from the main file and it will utilize a simple
model (projectile motion with constant acceleration without drag) with four parame-
ters, namely the components of the initial velocity (the initial position of the marble
is the origin of the coordinate system) and the value of the constant acceleration. The
function will then apply a fit to estimate the values of the four parameters. The func-
tion will output the values of said parameters. Be sure to include also the calculation
of the constant value of the acceleration due to gravity.

6. If your team has four members (and only if your team has four members), then pro-
grammer 4 will create a separate file containing a function accepting A as input. This
function will be called from the main file and it will estimate the speed of the marble
as a function of time for each experiment. The function will then plot the estimates
for the speed as a functions of time.

7. Each programmer in the team will contribute their work using Git. Feel free to take
advantage of Matlab's own functions to perform the relevant calculations. Finally, the team will work together to finalize the main program.
The main program will call the various functions contributed in turn so to generate
the required outputs of each function.

8. Each programmer will document their contribution by properly commenting the code
they develop, paying attention to indicating their name on their particular contri-
bution. The annotations should allow the course instructors to generate the code
documentation using Doxygen.

9. Finally, each member of a team will submit the final product as a zip archive uploaded
to CANVAS.
