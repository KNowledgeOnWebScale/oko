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
    write(Out,'\'https://idlabresearch.github.io/etc#n0\'(\'https://idlabresearch.github.io/etc#z\',true) <= true.\n'),
    write(Out,'\n'),
    (   between(0,999,I),
        J is I+1,
        format(Out,"'https://idlabresearch.github.io/etc#n~d'(X,true) <= 'https://idlabresearch.github.io/etc#n~d'(X,true).~n",[J,I]),
        format(Out,"'https://idlabresearch.github.io/etc#i~d'(X,true) <= 'https://idlabresearch.github.io/etc#n~d'(X,true).~n",[J,I]),
        format(Out,"'https://idlabresearch.github.io/etc#j~d'(X,true) <= 'https://idlabresearch.github.io/etc#n~d'(X,true).~n",[J,I]),
        fail
    ;   true
    ),
    write(Out,'\n'),
    write(Out,'% query\n'),
    write(Out,'\'https://idlabresearch.github.io/etc#n1000\'(_ELEMENT,true) => true.\n'),
    close(Out).
