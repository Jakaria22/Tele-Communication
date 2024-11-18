% Calculate Offered Load and Required Service Channels (Erlang B Formula)

% Inputs
traffic = 50; % in Erlangs
blocking_probability = 0.01; % 1% blocking

% Required Channels (approximation using Erlang B Table or iterative method)
channels = ceil(traffic + sqrt(2 * traffic));
fprintf('Offered Load: %.2f Erlangs, Required Channels: %d\n', traffic, channels);

