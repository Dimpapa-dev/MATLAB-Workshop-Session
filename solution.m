clear;
clc;
close all;

%% Temperature data
temperature = [28 31 35 42 38 45 29 41 33 47];
threshold = 40;

%% Analyze the temperature data
[avgTemp, maxTemp, hotReadings] = analyzeTemperature(temperature, threshold);

%% Display the results
fprintf('Average temperature: %.2f °C\n', avgTemp);
fprintf('Maximum temperature: %.2f °C\n', maxTemp);
fprintf('Number of readings above threshold: %d\n', length(hotReadings));

disp('Hot readings:');
disp(hotReadings);
