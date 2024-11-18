%Find usage in call-seconds, CCS, and Erlangs

% Inputs
num_calls = 100; % total number of calls
avg_call_duration = 120; % average call duration in seconds

% Calculations
call_seconds = num_calls * avg_call_duration;
ccs = call_seconds / 100; % Centi-call seconds
erlangs = call_seconds / 3600;

fprintf('Call-seconds: %d, CCS: %.2f, Erlangs: %.2f\n', call_seconds, ccs, erlangs);

