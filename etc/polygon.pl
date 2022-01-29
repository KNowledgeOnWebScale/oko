% Calculating the area of a polygon

:- op(1150,xfx,=>).
:- op(1200,xfx,<=).

term_expansion((X <= Y),(X :- Y)).

'https://idlabresearch.github.io/etc#area'([_],0).
'https://idlabresearch.github.io/etc#area'([[A,B],[C,D]|E],F) <=
    'https://idlabresearch.github.io/etc#area'([[C,D]|E],G),
    F is (A*D-B*C)/2+G.

% query
'https://idlabresearch.github.io/etc#area'([[3,2],[6,2],[7,6],[4,6],[5,5],[5,3],[3,2]],_ANSWER) => yes.
