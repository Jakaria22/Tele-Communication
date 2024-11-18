%Calculate ABS/BH Calling Rates and Design Cell Capacity

% Inputs
calls_per_day = 10000;
avg_call_duration = 3; % in minutes
busy_hours = 8;

% ABS/BH Calling Rate
abs_bh_rate = (calls_per_day * avg_call_duration) / (busy_hours * 60);
fprintf('ABS/BH Calling Rate: %.2f Erlangs\n', abs_bh_rate);

