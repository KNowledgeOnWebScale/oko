% Traversing graph paths

:- op(1150,xfx,=>).

:- dynamic('https://github.com/IDLabResearch/Heiseneye#path'/2).

'http://example.org/etc#oneway'('http://example.org/etc#paris','http://example.org/etc#orleans').
'http://example.org/etc#oneway'('http://example.org/etc#paris','http://example.org/etc#chartres').
'http://example.org/etc#oneway'('http://example.org/etc#paris','http://example.org/etc#amiens').
'http://example.org/etc#oneway'('http://example.org/etc#orleans','http://example.org/etc#blois').
'http://example.org/etc#oneway'('http://example.org/etc#orleans','http://example.org/etc#bourges').
'http://example.org/etc#oneway'('http://example.org/etc#blois','http://example.org/etc#tours').
'http://example.org/etc#oneway'('http://example.org/etc#chartres','http://example.org/etc#lemans').
'http://example.org/etc#oneway'('http://example.org/etc#lemans','http://example.org/etc#angers').
'http://example.org/etc#oneway'('http://example.org/etc#lemans','http://example.org/etc#tours').
'http://example.org/etc#oneway'('http://example.org/etc#angers','http://example.org/etc#nantes').

'http://example.org/etc#oneway'(A,B) => 'https://github.com/IDLabResearch/Heiseneye#path'(A,B).
'https://github.com/IDLabResearch/Heiseneye#path'(A,B),'https://github.com/IDLabResearch/Heiseneye#path'(B,C) => 'https://github.com/IDLabResearch/Heiseneye#path'(A,C).

% query
'https://github.com/IDLabResearch/Heiseneye#path'(_CITY,'http://example.org/etc#nantes') => yes.
