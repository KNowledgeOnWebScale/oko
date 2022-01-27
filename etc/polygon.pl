% Calculating the area of a polygon

:- op(1150,xfx,=>).

'https://github.com/IDLabResearch/Heiseneye#area'([_],0).
'https://github.com/IDLabResearch/Heiseneye#area'([[A,B],[C,D]|E],F) :-
    'https://github.com/IDLabResearch/Heiseneye#area'([[C,D]|E],G),
    F is (A*D-B*C)/2+G.

% query
'https://github.com/IDLabResearch/Heiseneye#area'([[3,2],[6,2],[7,6],[4,6],[5,5],[5,3],[3,2]],_ANSWER) => yes.
