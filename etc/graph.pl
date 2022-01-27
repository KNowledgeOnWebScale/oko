% Traversing graph paths

:- op(1150,xfx,=>).

:- dynamic('https://josd.github.io/heiseneye/etc#path'/2).

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

'http://example.org/etc#oneway'(A,B) => 'https://josd.github.io/heiseneye/etc#path'(A,B).
'https://josd.github.io/heiseneye/etc#path'(A,B),'https://josd.github.io/heiseneye/etc#path'(B,C) => 'https://josd.github.io/heiseneye/etc#path'(A,C).

% query
'https://josd.github.io/heiseneye/etc#path'(_CITY,'http://example.org/etc#nantes') => yes.
