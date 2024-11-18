%Calculate Number of Mobile Subscribers Supported

% Inputs
total_traffic = 100; % in Erlangs
traffic_per_user = 0.05; % Erlangs per user

% Number of Subscribers
num_subscribers = total_traffic / traffic_per_user;
fprintf('Number of Subscribers Supported: %.0f\n', num_subscribers);

