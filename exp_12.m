clc;
clear all;

N=input('Enter number of channerls: ');
H=input('Enter average holding time(H) in seconds: ');
B=input('Enter blocking probabilty: ');
BHcall= input('Input busy hour call rate: ')


% Erlang B function
erlangB = @(A, N) (A^N / factorial(N)) / sum(A.^[0:N] ./ factorial(0:N));

% Binary search for offered load (A)
A_low = 0; A_high = N * 2; tol = 1e-6; % Tolerance for convergence
while A_high - A_low > tol
    A_mid = (A_low + A_high) / 2;
    if erlangB(A_mid, N) > B
        A_high = A_mid;
    else
        A_low = A_mid;
    end
end

% Result
A = (A_low + A_high) / 2;
fprintf('Offered Load (A): %.4f Erlangs\n', A);

Block_prob = A * (1 - B); % Traffic after considering blocking
Avgtraffic_user = (BHcall * H) / 3600; % Average traffic per user in Erlangs
No_users = Block_prob / Avgtraffic_user; % Total number of users supported

% Display Results
fprintf('Number of mobile subscribers supported: %d\n', round(No_users));
