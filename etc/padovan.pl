% See https://en.wikipedia.org/wiki/Padovan_sequence

:- op(1150,xfx,=>).

'https://github.com/IDLabResearch/Heiseneye#padovan'(A,B) :-
    padovan(A,0,1,1,B).

padovan(0,A,_,_,A).
padovan(1,_,A,_,A).
padovan(2,_,_,A,A).
padovan(A,B,C,D,E) :-
    A > 2,
    F is A-1,
    G is B+C,
    padovan(F,C,D,G,E).

'https://github.com/IDLabResearch/Heiseneye#plastic_ratio'(A,B) :-
    'https://github.com/IDLabResearch/Heiseneye#padovan'(A,C),
    D is A+1,
    'https://github.com/IDLabResearch/Heiseneye#padovan'(D,E),
    B is E/C.

% query
'https://github.com/IDLabResearch/Heiseneye#padovan'(1,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(2,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(3,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(4,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(5,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(6,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(7,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(8,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(9,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(10,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(11,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(12,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(13,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(14,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(15,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(16,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(17,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(18,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(19,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(20,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(91,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(283,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#padovan'(3674,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#plastic_ratio'(1,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#plastic_ratio'(10,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#plastic_ratio'(100,_ANSWER) => yes.
'https://github.com/IDLabResearch/Heiseneye#plastic_ratio'(1000,_ANSWER) => yes.
