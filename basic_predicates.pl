:- initialization
format('File loaded~n').

myAppend([], B, B).
myAppend([H|A], B, [H|C]):- myAppend(A, B, C). % C = A + B

myMember(X,L) :- myAppend(_,[X|_],L).

myFirst(F, [F|_]).

second(S, [_,S|_]).

myLast(F,L) :- append(_, [F], L).

myLength([], 0).
myLength([_|T], N) :- myLength(T, M), N = M+1.

less(A,B) :- A < B.

remove(X, L, NL) :- myAppend(A, [X|B], L), myAppend(A, B, NL).

perm([],[]).
% perm(P, [H|T]) :- remove(H, [H|T], M), perm(P, M).
perm([H|P], L) :- remove(H, L, M), perm(P, M).

add(X, L, N) :- remove(X, N, L).
add2(X, L, [X|L]).
add3(X, [H|T], [H|L]) :- add(X, T, L).

prefix(P, L) :- myAppend(P, _, L).
suffix(S, L) :- myAppend(_, S, L).
 infix(C, L) :- myAppend(P, _, L), myAppend(_, C, P).

sorted([]).
sorted([_]).
sorted([A, B|T]) :- less(A, B), sorted([B|T]).

sorted2(L) :- not((infix([A,B|L], not(less(A,B))))).

% min(M, L)

min2(H, H, N) :- less(H, N).
min(M, [M]).
min(M, [H|T]) :- min(N, T), min2(M, H, N).

