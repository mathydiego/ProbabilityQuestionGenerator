function L  = ProbabilityQuestionGenerator(k)
%k is max number of total tosses

p = 0.1* randi([1,9]);
v = randi([2,k],1,2);
N = max(v); %number of total tosses
M = min(v); %number of desired successes

ANSWER = nchoosek(N,M)*p^M*(1-p)^(N-M);

fprintf('A person has a %.0f%% chance of achieving a task. The person tries to achieve the task %d times.\n',100*p,N) % '%.0f' because it outputs 6e+01% or 3e+01% otherwise
fprintf( 'What is the probability that the person succeeds %d times?\n', M)
fprintf('Press ''Enter'' to show the answer.\n')
if getkey == 13
    ANSWER
end