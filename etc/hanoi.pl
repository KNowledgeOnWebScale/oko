% Towers of Hanoi

:- op(1150,xfx,=>).

'https://github.com/IDLabResearch/Heiseneye#move'(0,[_,_,_]) :-
    !.
'https://github.com/IDLabResearch/Heiseneye#move'(N,[A,B,C]) :-
    M is N-1,
    'https://github.com/IDLabResearch/Heiseneye#move'(M,[A,C,B]),
    'https://github.com/IDLabResearch/Heiseneye#move'(M,[C,B,A]).

% query
'https://github.com/IDLabResearch/Heiseneye#move'(14,[left,centre,right]) => yes.
