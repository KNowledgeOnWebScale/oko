% Takeuchi function

:- op(1150,xfx,=>).
:- op(1200,xfx,<=).

term_expansion((X <= Y),(X :- Y)).

'https://github.com/IDLabResearch/Heiseneye#tak'([X,Y,Z],Z) <=
    X =< Y,
    !.
'https://github.com/IDLabResearch/Heiseneye#tak'([X,Y,Z],A) <=
    X1 is X-1,
    'https://github.com/IDLabResearch/Heiseneye#tak'([X1,Y,Z],A1),
    Y1 is Y-1,
    'https://github.com/IDLabResearch/Heiseneye#tak'([Y1,Z,X],A2),
    Z1 is Z-1,
    'https://github.com/IDLabResearch/Heiseneye#tak'([Z1,X,Y],A3),
    'https://github.com/IDLabResearch/Heiseneye#tak'([A1,A2,A3],A).

% query
'https://github.com/IDLabResearch/Heiseneye#tak'([34,13,8],_A) => yes.

% a single answer is fine
limited_answer(1).
