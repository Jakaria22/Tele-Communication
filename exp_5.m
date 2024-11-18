%Convert Traffic Intensity to Erlangs and CCS


% Inputs
traffic_intensity = 5; % in Erlangs

% Conversions
ccs = traffic_intensity * 36; % 1 Erlang = 36 CCS
fprintf('Traffic Intensity: %.2f Erlangs, %.2f CCS\n', traffic_intensity, ccs);

