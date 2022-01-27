% Using Skolem function

:- op(1150,xfx,=>).

'http://example.org/etc#Person'('http://example.org/etc#Peter').
'http://example.org/etc#Person'('http://example.org/etc#Bob').

'https://github.com/IDLabResearch/Heiseneye#likes'(P,'https://josd.github.io/heiseneye/etc/likes#sk1'(P)) :-
    'http://example.org/etc#Person'(P).

% query
'https://github.com/IDLabResearch/Heiseneye#likes'(_X,_Y) => yes.
