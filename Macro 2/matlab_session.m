%{
ECON 611 - MACROECONOMIC THEORY II
PROF. KAIJI CHEN, PH.D.
INTRODUCTION TO MATLAB - JAFET BACA
01-19-2024

%}

%% 1. Basic comands

clear;            %Clear the workspace
clc;              %Clear the command window
clearvars;        %Clear variables from memory
pwd;              %Print current directory
ls;               %List all the files in the current directory
lookfor disp      %Search help for keywords
help disp         %Provide documentation of a function

%% 2. Basic matrix algebra

A = ones(3,3);    %Return a 3x3 matrix of ones
B = [1 2 4; 13 9 6; 7 8 9];

% --- 2.1. Transposes of A and B
A';
B';

% --- 2.2. Inverses of A and B
inv(A); 
inv(B);

% --- 2.3. Matrix multiplication
A * B;  %Matrix product of A and B
A .* B; %Element-wise multiplication of A and B

%% 3. Conditional statements

% --- 3.1. Classify student's grade
grade = 82;
if grade >= 90
    disp('A');
elseif grade >= 80 
    disp('B')
elseif grade >= 70
    disp('C')
else
    disp('D')
end

% --- 3.2. Determine if an individual is eligible for a subsidy
income = 28000;
student_status = 1;
dependents = 1;
age = 30;

% || means or and && means the 'and ' conditionals
if (income < 30000 || student_status == 1) && (dependents >= 2 || age >= 65)
    disp('Eligible')
else
    disp('Not eligible')
end

%% 4. Loops

% --- 4.1. For loops  

%Print numbers from 1 to 10
for i = 1:10
    disp(i);
end

%Store information in an existent vector
x = zeros(1,10);
for i = 1:10
    x(1,i) = 2^i;
end

%Nested loops
m = zeros(3,3);
for i = 1:3
    for j = 1:3
        m(i,j) = i*j;
    end
end

% --- 4.2. While loops 

%Print numbers from 1 to 10
count = 1;
while count <= 10
    disp(count);
    count = count + 1;
end

%Find the smallest integer n such that the sum
%of the numbers from 1 to n is greater or equal to 100
n = 1;
while sum(1:n) <= 100
    n = n + 1;
end

%% 5. Plots

clc; clear

% --- 5.1. Line plots

x = 1:10;
y = rand(1, 10);
figure;
plot(x, y);
title('Example line plot');
xlabel('Value');
ylabel('Frequency');

% --- 5.2. Histograms

data = randn(1000, 1);
figure;
histogram(data)
title('Example histogram')
xlabel('Value')
ylabel('Frequency')

% --- 5.3. Scatter plots

x = randn(100, 1);
y = randn(100, 1);
figure;
scatter(x, y);
title('Example scatter plot');
xlabel('x');
ylabel('y')

% --- 5.4. Bar plots

categories = {'A','B', 'C', 'D'};
values = [5, 10, 15, 20];
figure;
bar(values);
title('Example Bar Plot');
set(gca, 'xticklabel', categories);
ylabel('Values');

%% 6. Practice

% --- Exercise 1

%Create a matrix with two columns and 10 rows.
%In the first column, store the first 10 numbers of the Fibonacci series.
%In the second column, store the cumulative sum of the Fibonacci series up
%to that point.

% --- Exercise 2

%Given an array of initial GDP values for different countries and constant
%annual growth rate of $2 \%$, calculate the GDP for each country over the
%next ' $n$ ' years.
%Store the GDP values for each year in a matrix, where each row represents
%a country and each column represents a year.
%Use ' $n$ ' as 10 for this exercise.
%Example initial GDPs: [1000, 2000, 3000] for three countries.
