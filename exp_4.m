%Determine Traffic Intensity


% Inputs
num_users = 100;
avg_call_rate = 2; % calls per hour per user
avg_call_duration = 2; % in minutes

% Traffic Intensity
traffic_intensity = num_users * avg_call_rate * (avg_call_duration / 60);
fprintf('Traffic Intensity: %.2f Erlangs\n', traffic_intensity);
