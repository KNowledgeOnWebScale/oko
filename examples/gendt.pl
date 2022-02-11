% Generating deep taxonomy

:- use_module(library(between)).
:- use_module(library(format)).

run :-
    open('dt.pl',write,Out),
    write(Out,'% Deep taxonomy\n'),
    write(Out,'% See http://ruleml.org/WellnessRules/files/WellnessRulesN3-2009-11-10.pdf\n'),
    write(Out,'\n'),
    write(Out,'\'http://example.org/ns#N0\'(\'http://example.org/ns#z\',[]).\n'),
    write(Out,'\n'),
    (   between(0,999,I),
        J is I+1,
        format(Out,"'http://example.org/ns#N~d'(X,[]) :- 'http://example.org/ns#N~d'(X,[]).~n",[J,I]),
        format(Out,"'http://example.org/ns#I~d'(X,[]) :- 'http://example.org/ns#N~d'(X,[]).~n",[J,I]),
        format(Out,"'http://example.org/ns#I~d'(X,[]) :- 'http://example.org/ns#N~d'(X,[]).~n",[J,I]),
        fail
    ;   true
    ),
    write(Out,'\n'),
    write(Out,'% query\n'),
    write(Out,'\'http://example.org/ns#N1000\'(_ELEMENT,[]) => true.\n'),
    close(Out).
