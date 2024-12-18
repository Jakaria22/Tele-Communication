%Calculate the Offered Load

% Inputs
call_rate = 20; % calls per hour
avg_call_duration = 3; % in minutes

% Offered Load in Erlangs
offered_load = call_rate * (avg_call_duration / 60);
fprintf('Offered Load: %.2f Erlangs\n', offered_load);

