function [avgTemp, maxTemp, hotReadings] = analyzeTemperature(temperature, threshold)
% analyzeTemperature analyzes a set of temperature readings.
%
% Inputs:
%   temperature - array containing temperature readings
%   threshold   - temperature threshold
%
% Outputs:
%   avgTemp     - average temperature
%   maxTemp     - maximum temperature
%   hotReadings - readings above the threshold

%% Calculate basic statistics
avgTemp = mean(temperature);
maxTemp = max(temperature);

%% Preallocate space for hot readings
hotReadings = zeros(1, length(temperature));

count = 0;

%% Check each temperature reading
for i = 1:length(temperature)

    if temperature(i) > threshold
        count = count + 1;
        hotReadings(count) = temperature(i);
    end

end

%% Remove unused preallocated elements
hotReadings = hotReadings(1:count);

%% Plot the temperature readings
figure;
plot(temperature, 'o-');
hold on;
yline(threshold, '--');

xlabel('Reading Number');
ylabel('Temperature (°C)');
title('Temperature Measurements');
legend('Temperature', 'Threshold');
grid on;

end
