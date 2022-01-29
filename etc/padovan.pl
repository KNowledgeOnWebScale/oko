% See https://en.wikipedia.org/wiki/Padovan_sequence

:- op(1150,xfx,=>).
:- op(1200,xfx,<=).

term_expansion((X <= Y),(X :- Y)).

'https://idlabresearch.github.io/etc#padovan'(A,B) <= padovan(A,0,1,1,B).

padovan(0,A,_,_,A).
padovan(1,_,A,_,A).
padovan(2,_,_,A,A).
padovan(A,B,C,D,E) <=
    A > 2,
    F is A-1,
    G is B+C,
    padovan(F,C,D,G,E).

'https://idlabresearch.github.io/etc#plastic_ratio'(A,B) <=
    'https://idlabresearch.github.io/etc#padovan'(A,C),
    D is A+1,
    'https://idlabresearch.github.io/etc#padovan'(D,E),
    B is E/C.

% query
'https://idlabresearch.github.io/etc#padovan'(1,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(2,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(3,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(4,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(5,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(6,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(7,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(8,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(9,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(10,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(11,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(12,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(13,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(14,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(15,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(16,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(17,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(18,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(19,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(20,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(91,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(283,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#padovan'(3674,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#plastic_ratio'(1,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#plastic_ratio'(10,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#plastic_ratio'(100,_ANSWER) => yes.
'https://idlabresearch.github.io/etc#plastic_ratio'(1000,_ANSWER) => yes.
