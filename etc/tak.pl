% Takeuchi function

:- op(1150,xfx,=>).
:- op(1200,xfx,<=).

term_expansion((X <= Y),(X :- Y)).

'https://idlabresearch.github.io/etc#tak'([X,Y,Z],Z) <=
    X =< Y,
    !.
'https://idlabresearch.github.io/etc#tak'([X,Y,Z],A) <=
    X1 is X-1,
    'https://idlabresearch.github.io/etc#tak'([X1,Y,Z],A1),
    Y1 is Y-1,
    'https://idlabresearch.github.io/etc#tak'([Y1,Z,X],A2),
    Z1 is Z-1,
    'https://idlabresearch.github.io/etc#tak'([Z1,X,Y],A3),
    'https://idlabresearch.github.io/etc#tak'([A1,A2,A3],A).

% query
'https://idlabresearch.github.io/etc#tak'([34,13,8],_A) => true.

% a single answer is fine
limited_answer(1).
