% Traversing graph paths

:- op(1150,xfx,=>).

:- dynamic('https://idlabresearch.github.io/etc#path'/2).

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

'http://example.org/etc#oneway'(A,B) => 'https://idlabresearch.github.io/etc#path'(A,B).
'https://idlabresearch.github.io/etc#path'(A,B),'https://idlabresearch.github.io/etc#path'(B,C) => 'https://idlabresearch.github.io/etc#path'(A,C).

% query
'https://idlabresearch.github.io/etc#path'(_CITY,'http://example.org/etc#nantes') => true.
