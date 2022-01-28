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
    write(Out,'\'http://example.org/etc#N0\'(\'http://example.org/etc#z\').\n'),
    write(Out,'\n'),
    (   between(0,9999,I),
        J is I+1,
        format(Out,"'http://example.org/etc#N~d'(X) <= 'http://example.org/etc#N~d'(X).~n",[J,I]),
        format(Out,"'http://example.org/etc#I~d'(X) <= 'http://example.org/etc#N~d'(X).~n",[J,I]),
        format(Out,"'http://example.org/etc#J~d'(X) <= 'http://example.org/etc#N~d'(X).~n",[J,I]),
        fail
    ;   true
    ),
    write(Out,'\n'),
    write(Out,'% query\n'),
    write(Out,'\'http://example.org/etc#N10000\'(_ELEMENT) => yes.\n'),
    close(Out).
