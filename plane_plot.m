clear;
clc;
close all;

%% Define two vectors
% These two vectors lie in the plane.
V1 = [1 4 5];
V2 = [2 3 6];

%% Find a vector perpendicular to the plane
% The cross product gives a normal vector to the plane.
N = cross(V1, V2);

%% Define a point on the plane
% We use the origin as a point on the plane.
P = [0 0 0];

%% Calculate the constant in the plane equation
% Plane equation:
% N(1)*X + N(2)*Y + N(3)*Z + D = 0
D = -dot(N, P);

%% Create an X-Y grid
[X, Y] = meshgrid(-5:0.5:5, -5:0.5:5);

%% Calculate Z from the plane equation
Z = -(N(1)*X + N(2)*Y + D) / N(3);

%% Plot the plane
figure;
surf(X, Y, Z);

xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('Plane Defined by Two Vectors');
grid on;
