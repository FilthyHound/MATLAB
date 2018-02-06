% File:   Test_sum.m
%
% A script file to test the function sum_elements
%
clear;

% Create the 3 x 3 array
t = [1 2 3; 4 5 6; 7 8 9];
 
% Call the function to sum elements by row
rs = sum_elements(t, logical(1));
 
% Append the sum of rows as a new column
t_rs = [t rs];
 
% Call the function to sum elements by column
cs = sum_elements(t, logical(0));
 
% Append the column sum as a new row
t_cs = [t; cs];


 
 
 
 
 
 
 
 