% See https://en.wikipedia.org/wiki/Padovan_sequence

:- op(1150,xfx,=>).

'https://josd.github.io/heiseneye/etc#padovan'(A,B) :-
    padovan(A,0,1,1,B).

padovan(0,A,_,_,A).
padovan(1,_,A,_,A).
padovan(2,_,_,A,A).
padovan(A,B,C,D,E) :-
    A > 2,
    F is A-1,
    G is B+C,
    padovan(F,C,D,G,E).

'https://josd.github.io/heiseneye/etc#plastic_ratio'(A,B) :-
    'https://josd.github.io/heiseneye/etc#padovan'(A,C),
    D is A+1,
    'https://josd.github.io/heiseneye/etc#padovan'(D,E),
    B is E/C.

% query
'https://josd.github.io/heiseneye/etc#padovan'(1,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(2,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(3,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(4,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(5,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(6,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(7,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(8,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(9,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(10,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(11,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(12,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(13,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(14,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(15,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(16,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(17,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(18,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(19,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(20,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(91,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(283,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#padovan'(3674,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#plastic_ratio'(1,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#plastic_ratio'(10,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#plastic_ratio'(100,_ANSWER) => yes.
'https://josd.github.io/heiseneye/etc#plastic_ratio'(1000,_ANSWER) => yes.
