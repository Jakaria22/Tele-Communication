%Calculate Total Traffic and Required MSCs

% Inputs
total_traffic = 200; % in Erlangs
msc_capacity = 50; % Erlangs per MSC

% Required MSCs
required_mscs = ceil(total_traffic / msc_capacity);
fprintf('Total Traffic: %.2f Erlangs, Required MSCs: %d\n', total_traffic, required_mscs);

