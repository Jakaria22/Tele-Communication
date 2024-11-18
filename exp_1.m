
%Calculate the Grade of Service during the Busy Hour

% Inputs
offered_traffic = 10; % in Erlangs
blocked_calls = 0.2;  % in fraction (e.g., 20% blocking)

% Grade of Service (GOS)
gos = blocked_calls / offered_traffic;
fprintf('Grade of Service (GOS): %.2f\n', gos);

