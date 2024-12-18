clc;
clear all;

% Inputs
lambda = input('Enter the average call arrival rate (calls per hour): '); % Call arrival rate
ht = input('Enter the average call holding time (hours per call): ');     % Call holding time
B_target = input('Enter the target blocking probability (B): ');         % Target blocking probability

% Calculate Offered Load (A)
A = lambda * ht; % Offered Load in Erlangs
fprintf('Offered Load (A): %.4f Erlangs\n', A);

% Erlang B formula function
erlangB = @(A, N) (A^N / factorial(N)) / sum(A.^[0:N] ./ factorial([0:N]));

% Part 2: Calculate Required Channels (N)
N = 1; % Start with one channel
while true
    B = erlangB(A, N);
    if B <= B_target
        break;
    end
    N = N + 1; % Increment channels until target blocking probability is met
end

fprintf('Required Service Channels (N): %d\n', (N));
fprintf('Blocking probability (P): %f\n', B);
