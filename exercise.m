clear;
clc;
close all;

%% 1. IMPORT THE CSV DATA
% TODO: Read sensor_log.csv into a table.
% Example:
% data = readtable("sensor_log.csv");

%% 2. EXTRACT THE COLUMNS
% TODO: Extract these columns into separate variables:
% time
% temperature
% humidity

%% 3. PLOT THE IMPORTED DATA
% TODO: Plot temperature against time.
%
% Use:
% plot(time, temperature, 'o-')
%
% Add:
% xlabel
% ylabel
% title
% grid on

%% 4. BASIC STATISTICS
% TODO: Calculate:
% - Average temperature
% - Maximum temperature
% - Minimum temperature
% - Standard deviation
%
% Display the results using fprintf.

%% 5. STATISTICS EXERCISE
% TODO: Find how many temperature readings are above 40 °C.
%
% Hint:
% hotReadings = temperature > 40;
%
% Then use sum() to count them.
%
% Also extract the actual temperatures above 40 °C using
% logical indexing.

%% 6. CURVE FITTING WITH POLYFIT
% The workshop uses a linear fit.
%
% TODO: Fit a straight line using:
% p = polyfit(time, temperature, 1);
%
% p(1) is the slope.
% p(2) is the intercept.

%% 7. CALCULATE THE FITTED VALUES
% TODO: Use polyval() to calculate the predicted temperatures.
%
% Example:
% temperature_fit = polyval(p, time);

%% 8. PLOT DATA AND FITTED MODEL
% TODO: Plot:
% - Original temperature data using 'o'
% - Linear fitted values using '-'
%
% Add labels, title, legend and grid.
