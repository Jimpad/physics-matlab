% Author: Jimpad
% Website: https://jimpad.netlify.app || https://jimpad.github.io
% GitHub: https://github.com/Jimpad/jimpad

%% 1) Explain what means if η<1, η=1 and η>1

% We define n as: n=Vr/Vb. Which means:
% 
% If n<1, the velocity of the river is less than the velocity of the boat.
% If n=1, the velocity of the river is equal to the velocity of the boat.
% If n>1, the velocity of the river is more than the velocity of the boat.

% Set the values in X (range from 0.05 to 5 incrementing by 0.05)
range=0.05:0.05:5;

% Set a range from 1 to 100 of zeros in Y
solutions=zeros(1,100);

%% 2) Find optimal angles for η=0.05, 0.10, 0.15, …. 5. (100 solutions)
    
% Set distance (d) to 1
d=1;

% Set symbolic scaler variable for function below
syms x

% Initialize counter to 0
counter=0;

% Start iterating from 0.05 to 5 incrementing by 0.05
for n=0.05:0.05:5 

   % Increment the counter
   counter=counter+1;

   % Initialize the distance function
   distance_function=@(x) (d*cos(x)/sin(x))+((d*n)/sin(x));

   % Find derivatives of the funtion with each n (eta) using diff().
   ef=diff(distance_function,x);

   % Find where the derivative is equal to 0 using solve().
   s=solve(ef==0);

   % Set a condition for when it's a real solution.
   if isreal(s)

        % Mark the current position as 1 (Whenever we see 1 it's a real solution, similarly 0 is an imaginary)
       solutions(counter)=1;
   end    
end 

final_solution=[range;solutions];

%transponse, two cols. and 100 rows
final_solution=final_solution';

%% 3) For which η's (interval!) do you obtain real and imaginary solutions? What about η=1?

% For n<1, we obtain imaginary solutions 
% For n>1, we obtain real solutions 
% For n=1, we don't obtain solution

%% 4) Plot function d(α) in for η<1, η=1 and η>1 for a interval α=[0 , Pi]

% Case #1

% Set the figure which will hold the plot
figure

% Set first case where η < 1
n=0.3;

% Set symbolic scaler variable for function below
syms x

% Re-define distance function
distance_function=@(x) (d*cos(x)/sin(x))+((d*n)/sin(x));

% Store the data with solutions of function where n is negative into a new variable
negative_solutions=distance_function(x);

% Plot the negative solutions and define the color of lines to be red (r).
fplot(negative_solutions,[0 pi],'color','r','LineWidth',2);

% Get handle to current axis.
ax=gca;

% Y axis limit
ylim([-100 100])

% X axis font size
ax.XAxis.FontSize = 16;

% Y axis font size
ax.YAxis.FontSize = 16;

% Y axis label
ylabel('Distance','FontSize',20);

% X axis label, see \alpha
xlabel('\eta','FontSize',22);

% Case #2

% Set the figure which will hold the plot
figure

% Set second case where η = 1
n=1;

% Set symbolic scaler variable for function below
syms x

% Re-define distance function
distance_function=@(x) (d*cos(x)/sin(x))+((d*n)/sin(x));

% Store the data with solutions of function where n is neutral into a new variable
neutral_solutions=distance_function(x);

% Plot the negative solutions and define the color of lines to be green (g).
fplot(neutral_solutions,[0 pi],'color','g','LineWidth',2);

% Get handle to current axis.
ax=gca;

% Y axis limit
ylim([-100 100])

% X axis font size
ax.XAxis.FontSize = 16;

% Y axis font size
ax.YAxis.FontSize = 16;

% Y axis label
ylabel('Distance','FontSize',20);

% X axis label, see \alpha
xlabel('\eta','FontSize',22);

% Case #3

% Set the figure which will hold the plot
figure

% Third case where η > 1
n=1.7;

% Set symbolic scaler variable for function below
syms x

% Re-define distance function
distance_function=@(x) (d*cos(x)/sin(x))+((d*n)/sin(x));

% Store the data with solutions of function where n is positive into a new variable
positive_solutions=distance_function(x);

% Plot the negative solutions and define the color of lines to be blue (b).
fplot(positive_solutions,[0 pi],'color','b','LineWidth',2);

% Get handle to current axis.
ax=gca;

% Y axis limit
ylim([-100 100])

% X axis font size
ax.XAxis.FontSize = 16;

% Y axis font size
ax.YAxis.FontSize = 16;

% Y axis label
ylabel('Distance','FontSize',20);

% X axis label, see \alpha
xlabel('\eta','FontSize',22);

% Combine the 3 plots and save as pdf file 

% Set the figure which will hold the 3 plots
figure

% First case where η < 1
n=0.3;

% Set symbolic scaler variable for function below
syms x

% Re-define distance function
distance_function=@(x) (d*cos(x)/sin(x))+((d*n)/sin(x));

% Store the data with solutions of function where n is negative into a new variable
negative_solutions=distance_function(x);

% Plot the negative solutions and define the color of lines to be red (r).
fplot(negative_solutions,[0 pi],'color','r','LineWidth',2);

% Get handle to current axis.
ax=gca;

% Y axis limit
ylim([-100 100])

% X axis font size
ax.XAxis.FontSize = 16;

% Y axis font size
ax.YAxis.FontSize = 16;

% Y axis label
ylabel('Distance','FontSize',20);

% X axis label, see \alpha
xlabel('\eta','FontSize',22);

% Wait to plot the second graph
hold on

% Second case where η = 1
n=1;

% Set symbolic scaler variable for function below
syms x

% Re-define distance function
distance_function=@(x) (d*cos(x)/sin(x))+((d*n)/sin(x));

% Store the data with solutions of function where n is neutral into a new variable
neutral_solutions=distance_function(x);

% Plot the negative solutions and define the color of lines to be green (g).
fplot(neutral_solutions,[0 pi],'color','g','LineWidth',2);

% Get handle to current axis.
ax=gca;

% Y axis limit
ylim([-100 100])

% X axis font size
ax.XAxis.FontSize = 16;

% Y axis font size
ax.YAxis.FontSize = 16;

% Y axis label
ylabel('Distance','FontSize',20);

% X axis label, see \alpha
xlabel('\eta','FontSize',22);

% Wait to plot the third graph
hold on

% Third case where η = 1
n=1.7;

% Set symbolic scaler variable for function below
syms x

% Re-define distance function
distance_function=@(x) (d*cos(x)/sin(x))+((d*n)/sin(x));

% Store the data with solutions of function where n is positive into a new variable
positive_solutions=distance_function(x);

% Plot the negative solutions and define the color of lines to be blue (b).
fplot(positive_solutions,[0 pi],'color','b','LineWidth',2);

% Get handle to current axis
ax=gca;

% Y axis limit
ylim([-100 100])

% X axis font size
ax.XAxis.FontSize = 16;

% Y axis font size
ax.YAxis.FontSize = 16;

% Y axis label
ylabel('Distance','FontSize',20);

% X axis label, see \alpha
xlabel('\eta','FontSize',22);

% Save it to pdf format
saveas(gcf, "Plots Merged.pdf")

% Loop to plot the distance function when n (eta) is less than, more than, or equal to 1 (so we don't have to input them manually as shown above).

% Start iterating from 0.05 to 5 incrementing by 0.05
for n=-5:0.5:5

    % Define the interval on which the function is plotted
    x=[0 pi];
     
        % Set symbolic scaler variable for function below
        syms x

        % Re-define distance function
        distance_function=@(x) (d*cos(x)/sin(x))-((d*n)/sin(x));

    % Set condition where n is less than 1
    if n<1

        % Store data with solutions of function where n is negative into a new variable
        negative_solutions=distance_function(x);

        % Plot the solutions and color the lines red
        fplot(negative_solutions,'color','r');

        % Wait to plot the second graph
        hold on

    % Set condition where n is greater than 1
    elseif n>1

        % Store data with solutions of function where n is negative into a new variable
        positive_solutions=distance_function(x);

        % Plot the solutions and color the lines blue
        fplot(positive_solutions,'color','b');

        % Wait to plot the third graph
        hold on

    % Set condition where n is other cases than <,> 1 (Example: n = 1)
    else

        % Store data with solutions of function where n is negative into a new variable
        neutral_solutions=distance_function(x);

        % Plot the solutions and color the lines green
        fplot(neutral_solutions,'color', 'g')
    end 

    % Save it to pdf format
    saveas(gcf, "Loop Plots.pdf")
end

%% 5) What is the relation (describe) between "3 plots", real and imaginary solutions?

% Imaginary solutions are in red color, above y = 0, which are inversely related to the real solution in blue color below the line y = 0 and the green color line represnts the no solutions case when n = 1 but is directly related to the real solutions.

%% 6) We find α = 120O for η=2. Calculate d and plot a sketch: river flow, xo, d, α, ...?

% To calculate d we will redefine our function and some of its' parameters

% Set symbolic scaler variable for function below
syms x

% Re-define distance function
distance_function=@(x) (d*cos(x)/sin(x))+((d*n)/sin(x));

d=1
n=2

% This is 120 degrees converted to radian
x=2.0944

% Store the output from function in a variable
answer = distance_function(x)

% Call the variable containing distance answer
answer