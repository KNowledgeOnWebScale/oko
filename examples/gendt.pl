% Generating deep taxonomy

:- use_module(library(between)).
:- use_module(library(format)).

run :-
    open('dt.pl',write,Out),
    write(Out,'% Deep taxonomy\n'),
    write(Out,'% See http://ruleml.org/WellnessRules/files/WellnessRulesN3-2009-11-10.pdf\n'),
    write(Out,'\n'),
    write(Out,'\'http://example.org/ns#N0\'(\'http://example.org/ns#z\',\'http://example.org/ns#N0\').\n'),
    write(Out,'\n'),
    (   between(0,9999,I),
        J is I+1,
        format(Out,"'http://example.org/ns#N~d'(X,'http://example.org/ns#N~d') :- 'http://example.org/ns#N~d'(X,'http://example.org/ns#N~d').~n",[J,J,I,I]),
        format(Out,"'http://example.org/ns#I~d'(X,'http://example.org/ns#I~d') :- 'http://example.org/ns#N~d'(X,'http://example.org/ns#N~d').~n",[J,J,I,I]),
        format(Out,"'http://example.org/ns#J~d'(X,'http://example.org/ns#J~d') :- 'http://example.org/ns#N~d'(X,'http://example.org/ns#N~d').~n",[J,J,I,I]),
        fail
    ;   true
    ),
    write(Out,'\n'),
    write(Out,'% query\n'),
    write(Out,'\'http://example.org/ns#N1\'(_ELEMENT,\'http://example.org/ns#N1\') => true.\n'),
    write(Out,'\'http://example.org/ns#N10\'(_ELEMENT,\'http://example.org/ns#N10\') => true.\n'),
    write(Out,'\'http://example.org/ns#N100\'(_ELEMENT,\'http://example.org/ns#N100\') => true.\n'),
    write(Out,'\'http://example.org/ns#N1000\'(_ELEMENT,\'http://example.org/ns#N1000\') => true.\n'),
    write(Out,'\'http://example.org/ns#N10000\'(_ELEMENT,\'http://example.org/ns#N10000\') => true.\n'),
    close(Out).
