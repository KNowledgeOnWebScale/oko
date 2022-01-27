% Towers of Hanoi

:- op(1150,xfx,=>).

'https://josd.github.io/heiseneye/etc#move'(0,[_,_,_]) :-
    !.
'https://josd.github.io/heiseneye/etc#move'(N,[A,B,C]) :-
    M is N-1,
    'https://josd.github.io/heiseneye/etc#move'(M,[A,C,B]),
    'https://josd.github.io/heiseneye/etc#move'(M,[C,B,A]).

% query
'https://josd.github.io/heiseneye/etc#move'(14,[left,centre,right]) => yes.
