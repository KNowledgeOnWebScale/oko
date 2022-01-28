% See https://en.wikipedia.org/wiki/Fibonacci_number

:- op(1150,xfx,=>).
:- op(1200,xfx,<=).

term_expansion((X <= Y),(X :- Y)).

'https://github.com/IDLabResearch/Heiseneye#fibonacci'(A,B) <=
    fibonacci(A,0,1,B).

fibonacci(0,A,_,A).
fibonacci(1,_,A,A).
fibonacci(A,B,C,D) <=
    A > 1,
    E is A-1,
    F is B+C,
    fibonacci(E,C,F,D).

'https://github.com/IDLabResearch/Heiseneye#golden_ratio'(A,B) <=
    'https://github.com/IDLabResearch/Heiseneye#fibonacci'(A,C),
    D is A+1,
    'https://github.com/IDLabResearch/Heiseneye#fibonacci'(D,E),
    B is E/C.

% query
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(1,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(2,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(3,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(4,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(5,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(6,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(7,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(8,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(9,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(10,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(11,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(12,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(13,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(14,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(15,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(16,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(17,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(18,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(19,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(20,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(91,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(283,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#fibonacci'(3674,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#golden_ratio'(1,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#golden_ratio'(10,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#golden_ratio'(100,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#golden_ratio'(1000,_ANSWER) => yes.
