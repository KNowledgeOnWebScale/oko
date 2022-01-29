% Towers of Hanoi

:- op(1150,xfx,=>).
:- op(1200,xfx,<=).

term_expansion((X <= Y),(X :- Y)).

'https://idlabresearch.github.io/etc#move'(0,[_,_,_]) <=
    !.
'https://idlabresearch.github.io/etc#move'(N,[A,B,C]) <=
    M is N-1,
    'https://idlabresearch.github.io/etc#move'(M,[A,C,B]),
    'https://idlabresearch.github.io/etc#move'(M,[C,B,A]).

% query
'https://idlabresearch.github.io/etc#move'(14,[left,centre,right]) => true.
