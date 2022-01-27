% See https://en.wikipedia.org/wiki/Fibonacci_number

:- op(1150,xfx,=>).

'https://josd.github.io/heiseneye/etc#fibonacci'(A,B) :-
    fibonacci(A,0,1,B).

fibonacci(0,A,_,A).
fibonacci(1,_,A,A).
fibonacci(A,B,C,D) :-
    A > 1,
    E is A-1,
    F is B+C,
    fibonacci(E,C,F,D).

'https://josd.github.io/heiseneye/etc#golden_ratio'(A,B) :-
    'https://josd.github.io/heiseneye/etc#fibonacci'(A,C),
    D is A+1,
    'https://josd.github.io/heiseneye/etc#fibonacci'(D,E),
    B is E/C.

% query
'https://josd.github.io/heiseneye/etc#fibonacci'(1,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(2,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(3,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(4,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(5,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(6,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(7,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(8,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(9,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(10,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(11,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(12,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(13,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(14,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(15,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(16,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(17,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(18,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(19,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(20,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(91,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(283,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#fibonacci'(3674,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#golden_ratio'(1,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#golden_ratio'(10,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#golden_ratio'(100,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#golden_ratio'(1000,_ANSWER) => yes.
