clear;
clc;
close all;

%% 1. IMPORT THE CSV DATA
% Read the CSV file as a table.
data = readtable("sensor_log.csv");

% Display the first few rows.
head(data);

%% 2. EXTRACT THE COLUMNS
% Extract each column into a separate variable.
time = data.Time_s;
temperature = data.Temperature_C;
humidity = data.Humidity_percent;

%% 3. PLOT THE IMPORTED DATA
figure;

plot(time, temperature, 'o-');

xlabel('Time (s)');
ylabel('Temperature (°C)');
title('Temperature vs Time');
grid on;

%% 4. BASIC STATISTICS
% Calculate basic statistics for temperature.
avgTemp = mean(temperature);     % Average temperature
maxTemp = max(temperature);      % Maximum temperature
minTemp = min(temperature);      % Minimum temperature
stdTemp = std(temperature);      % Standard deviation

fprintf('Average temperature: %.2f °C\n', avgTemp);
fprintf('Maximum temperature: %.2f °C\n', maxTemp);
fprintf('Minimum temperature: %.2f °C\n', minTemp);
fprintf('Standard deviation: %.2f °C\n', stdTemp);

%% 5. STATISTICS EXERCISE
% Find how many temperature readings are above 40 °C.
hotReadings = temperature > 40;

numHot = sum(hotReadings);

fprintf('Number of readings above 40 °C: %d\n', numHot);

% Extract the actual hot temperature values.
hotTemperatures = temperature(hotReadings);

disp('Temperatures above 40 °C:');
disp(hotTemperatures);

%% 6. CURVE FITTING WITH POLYFIT
% Fit a straight line to the temperature data.
%
% p(1) = slope
% p(2) = intercept

p = polyfit(time, temperature, 1);

slope = p(1);
intercept = p(2);

fprintf('Fitted slope: %.4f °C/s\n', slope);
fprintf('Fitted intercept: %.4f °C\n', intercept);

%% 7. CALCULATE THE FITTED VALUES
% Use the fitted model to calculate predicted temperatures.
temperature_fit = polyval(p, time);

%% 8. PLOT DATA AND FITTED MODEL
figure;

plot(time, temperature, 'o');
hold on;
plot(time, temperature_fit, '-');

xlabel('Time (s)');
ylabel('Temperature (°C)');
title('Temperature Data and Linear Fit');
legend('Measured Data', 'Linear Fit');
grid on;
