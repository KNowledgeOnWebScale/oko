% Traversing graph paths

:- op(1150,xfx,=>).

:- dynamic('https://idlabresearch.github.io/etc#oneway'/2).
:- dynamic('https://idlabresearch.github.io/etc#path'/2).

true =>
    'https://idlabresearch.github.io/etc#oneway'('http://example.org/etc#paris','http://example.org/etc#orleans'),
    'https://idlabresearch.github.io/etc#oneway'('http://example.org/etc#paris','http://example.org/etc#chartres'),
    'https://idlabresearch.github.io/etc#oneway'('http://example.org/etc#paris','http://example.org/etc#amiens'),
    'https://idlabresearch.github.io/etc#oneway'('http://example.org/etc#orleans','http://example.org/etc#blois'),
    'https://idlabresearch.github.io/etc#oneway'('http://example.org/etc#orleans','http://example.org/etc#bourges'),
    'https://idlabresearch.github.io/etc#oneway'('http://example.org/etc#blois','http://example.org/etc#tours'),
    'https://idlabresearch.github.io/etc#oneway'('http://example.org/etc#chartres','http://example.org/etc#lemans'),
    'https://idlabresearch.github.io/etc#oneway'('http://example.org/etc#lemans','http://example.org/etc#angers'),
    'https://idlabresearch.github.io/etc#oneway'('http://example.org/etc#lemans','http://example.org/etc#tours'),
    'https://idlabresearch.github.io/etc#oneway'('http://example.org/etc#angers','http://example.org/etc#nantes').

'https://idlabresearch.github.io/etc#oneway'(A,B) => 'https://idlabresearch.github.io/etc#path'(A,B).
'https://idlabresearch.github.io/etc#path'(A,B),'https://idlabresearch.github.io/etc#path'(B,C) => 'https://idlabresearch.github.io/etc#path'(A,C).

% query
'https://idlabresearch.github.io/etc#path'(_CITY,'http://example.org/etc#nantes') => true.
