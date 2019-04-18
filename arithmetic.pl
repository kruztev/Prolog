% Length of a list

len([], 0).
len([_|T], N):- len(T, M), N is M+1.


% Sum of elements of a list

sum([], 0).
sum([_|T], S):- sum(T, TS), S is TS+1.


% Generator of natural numbers

n(0).
n(X):-n(Y), X is Y+1.


% Generator of natural numbers in an interval [A,B]

between(A, A, B):- A =< B.
between(X, A, B):- A < B, A1 is A+1, between(X, A1, B).


% Generators of even numbers

even(0).
even(X):- even(Y), X = Y+1.

even2(0).
even2(X):- n(Y), X is 2*Y.

even3(0).
even3(X):- n(X), mod(X,2) =:=0.


% All pairs of natural numbers

%decode(C, X, Y):- C is (2^X)*(2*Y + 1).
%n(X, Y):- n(C), decode(C, X, Y).




