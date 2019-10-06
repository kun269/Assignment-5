
function [] = Fitfunc(A)

load A.mat
%Code copied and reused from programmer 2
%--------------------------------------------------------------------------%
format long
m=size(A)
% define a matrix to accept the x, y, and z coordinate separatly from the 10 tests. 
X_value = ones(m(1,1),(m(1,2)-1)/30)
Y_value = ones(m(1,1),(m(1,2)-1)/30)
Z_value = ones(m(1,1),(m(1,2)-1)/30)
for i=1:10
    X_value(:,i)=A(:,3*(i-1)+2)
    Y_value(:,i)=A(:,3*(i-1)+3)
    Z_value(:,i)=A(:,3*(i-1)+4)
end
% calculate average of x, y, and z coordinate at each time interval for the 10 tests.
Ave_X=mean(X_value,2)
Ave_Y=mean(Y_value,2)
Ave_Z=mean(Z_value,2)
%-----------------------------------------------------------------------------%



%Programmer 3's code begins here:


% matrix of Ave Values
Af = [A(:,1) Ave_X Ave_Y Ave_Z]
           

            % fileID = fopen('Af.txt','wt');
            % for i = 1:141
            % fprintf(fileID,'%5.4f,%5.4f,%5.4f %5.4f\n',Af(i,:));
            % end
            % fclose(fileID);

syms g t Vok Voi Voj xoi xoj 


%Initial position components
xoi = Af(1,2);
xoj = Af(1,3);
xok = Af(1,4);

%fit functions for three velocity components and acceleration (due to
%gravity)
fxk = fit(Af(:,1),Af(:,4),'-0.5*g*(x^2)+Vok*x + -0.0136000');
fxi = fit(Af(:,1),Af(:,2),'Voi*x + -0.033000');
fxj = fit(Af(:,1),Af(:,3),'Voj*x + -0.0606000');

cons1 = [Vok g]';
cons1 = coeffvalues(fxk);

%Estimated three initial velocity components (from fit)
Voi = coeffvalues(fxi)
Voj = coeffvalues(fxj)
Vok = cons1(1,1)

%Estimated acceleration from gravity (from fit)
fita = cons1(1,2)

%calculation of A
chz = (Af(72,4)- Af(1,4)); %change in position (in z direction)
cht = (Af(72,1)- Af(1,1)); %change in time
calca = ((chz - ( 1.761*cht))*2)/(cht^2)
end 
