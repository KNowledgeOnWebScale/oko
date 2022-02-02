% Generating deep taxonomy

:- use_module(library(between)).
:- use_module(library(format)).

run :-
    open('etc/dt.pl',write,Out),
    write(Out,'% Deep taxonomy\n'),
    write(Out,'% See http://ruleml.org/WellnessRules/files/WellnessRulesN3-2009-11-10.pdf\n'),
    write(Out,'\n'),
    write(Out,':- op(1150,xfx,=>).\n'),
    write(Out,':- op(1200,xfx,<=).\n'),
    write(Out,'\n'),
    write(Out,'term_expansion((X <= Y),(X :- Y)).\n'),
    write(Out,'\n'),
    write(Out,'\'http://www.w3.org/1999/02/22-rdf-syntax-ns#type\'(\'http://example.org/etc#z\',\'http://example.org/etc#N0\').\n'),
    write(Out,'\n'),
    (   between(0,9999,I),
        J is I+1,
        format(Out,"'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X,'http://example.org/etc#N~d') <= 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X,'http://example.org/etc#N~d').~n",[J,I]),
        format(Out,"'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X,'http://example.org/etc#I~d') <= 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X,'http://example.org/etc#N~d').~n",[J,I]),
        format(Out,"'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X,'http://example.org/etc#J~d') <= 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X,'http://example.org/etc#N~d').~n",[J,I]),
        fail
    ;   true
    ),
    write(Out,'\n'),
    write(Out,'% query\n'),
    write(Out,'\'http://www.w3.org/1999/02/22-rdf-syntax-ns#type\'(_ELEMENT,\'http://example.org/etc#N1000\') => true.\n'),
    close(Out).
