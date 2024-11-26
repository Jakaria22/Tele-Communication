clc;
clear all;

N=input('Enter number of channerls: ');
H=input('Enter average holding time(H) in seconds');
B=input('Enter blocking probabilty: ');


% function for erlang b

erlang= @(A,N) (A^N/factorial(N)) / sum(A.^[0:N] ./factorial(0:N));

low=0
high=2*N;
tol=1e-6;


while high-low>tol
  mid_A= (high+low)/2;
  if erlang(mid_A,N) > B
    high=mid_A;
  else
    low=mid_A
  end
end

%result
A= (high+low)/2;
fprintf('Offered Load (A): %.4f Erlangs\n', A);
