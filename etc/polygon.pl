% Calculating the area of a polygon

:- op(1150,xfx,=>).

'https://josd.github.io/heiseneye/etc#area'([_],0).
'https://josd.github.io/heiseneye/etc#area'([[A,B],[C,D]|E],F) :-
    'https://josd.github.io/heiseneye/etc#area'([[C,D]|E],G),
    F is (A*D-B*C)/2+G.

% query
'https://josd.github.io/heiseneye/etc#area'([[3,2],[6,2],[7,6],[4,6],[5,5],[5,3],[3,2]],_ANSWER) => yes.
