clear;
clc;
close all;

%% Temperature data
temperature = [28 31 35 42 38 45 29 41 33 47];
threshold = 40;

%% Exercise
% Use the function analyzeTemperature to:
%
% 1. Calculate the average temperature.
% 2. Find the maximum temperature.
% 3. Find all readings above the threshold.
%
% The function should demonstrate:
% - Function input arguments
% - Multiple output arguments
% - Arrays
% - A for loop
% - An if statement
% - Preallocation using zeros
%
% TODO: Call the analyzeTemperature function and store its
%       three output values in avgTemp, maxTemp and hotReadings.

[avgTemp, maxTemp, hotReadings] = analyzeTemperature(temperature, threshold);

%% Display the results
fprintf('Average temperature: %.2f °C\n', avgTemp);
fprintf('Maximum temperature: %.2f °C\n', maxTemp);
fprintf('Number of readings above threshold: %d\n', length(hotReadings));

disp('Hot readings:');
disp(hotReadings);
