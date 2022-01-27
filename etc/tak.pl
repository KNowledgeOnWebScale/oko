% Takeuchi function

:- op(1150,xfx,=>).

'https://josd.github.io/heiseneye/etc#tak'([X,Y,Z],Z) :-
    X =< Y,
    !.
'https://josd.github.io/heiseneye/etc#tak'([X,Y,Z],A) :-
    X1 is X-1,
    'https://josd.github.io/heiseneye/etc#tak'([X1,Y,Z],A1),
    Y1 is Y-1,
    'https://josd.github.io/heiseneye/etc#tak'([Y1,Z,X],A2),
    Z1 is Z-1,
    'https://josd.github.io/heiseneye/etc#tak'([Z1,X,Y],A3),
    'https://josd.github.io/heiseneye/etc#tak'([A1,A2,A3],A).

% query
'https://josd.github.io/heiseneye/etc#tak'([34,13,8],_A) => yes.

% a single answer is fine
limited_answer(1).
