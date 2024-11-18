%Calculate Traffic Intensity Over Time

% Inputs
total_calls = 120; % total calls during 8 hours
avg_call_duration = 2; % in minutes
hours = 8;

% Traffic Intensity in Erlangs
traffic_intensity = (total_calls * avg_call_duration) / (60 * hours);
fprintf('Traffic Intensity: %.2f Erlangs\n', traffic_intensity);

