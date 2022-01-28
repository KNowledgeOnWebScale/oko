% Using Skolem function

:- op(1150,xfx,=>).
:- op(1200,xfx,<=).

term_expansion((X <= Y),(X :- Y)).

'http://example.org/etc#Person'('http://example.org/etc#Peter').
'http://example.org/etc#Person'('http://example.org/etc#Bob').

'https://github.com/IDLabResearch/Heiseneye#likes'(P,'https://github.com/IDLabResearch/Heiseneye/etc/likes#sk1'(P)) <=
    'http://example.org/etc#Person'(P).

% query
'https://github.com/IDLabResearch/Heiseneye#likes'(_X,_Y) => yes.
