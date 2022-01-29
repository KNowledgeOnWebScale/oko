% See https://en.wikipedia.org/wiki/Fibonacci_number

:- op(1150,xfx,=>).
:- op(1200,xfx,<=).

term_expansion((X <= Y),(X :- Y)).

'https://idlabresearch.github.io/etc#fibonacci'(A,B) <= fibonacci(A,0,1,B).

fibonacci(0,A,_,A).
fibonacci(1,_,A,A).
fibonacci(A,B,C,D) <=
    A > 1,
    E is A-1,
    F is B+C,
    fibonacci(E,C,F,D).

'https://idlabresearch.github.io/etc#golden_ratio'(A,B) <=
    'https://idlabresearch.github.io/etc#fibonacci'(A,C),
    D is A+1,
    'https://idlabresearch.github.io/etc#fibonacci'(D,E),
    B is E/C.

% query
'https://idlabresearch.github.io/etc#fibonacci'(1,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(2,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(3,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(4,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(5,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(6,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(7,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(8,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(9,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(10,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(11,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(12,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(13,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(14,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(15,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(16,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(17,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(18,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(19,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(20,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(91,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(283,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#fibonacci'(3674,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#golden_ratio'(1,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#golden_ratio'(10,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#golden_ratio'(100,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#golden_ratio'(1000,_ANSWER) => yes.
