# Webeye

## Webized reasoning

[Webeye](https://github.com/IDLabResearch/Webeye) is using [ISO Prolog notation](https://en.wikipedia.org/wiki/Prolog#ISO_Prolog):

TERM            | Examples
----------------|---------
IRI             | `'http://example.org/etc#Socrates'`
VARIABLE        | `X` `_abc`
LITERAL         | `"abc"` `1.52` `1e-18` `pi` `dt("2022-01-15",'http://www.w3.org/2001/XMLSchema#date')`
LIST            | `[TERM,...]` `[TERM,...\|LIST]`
TRIPLE          | `IRI(TERM,TERM)`
GRAPH           | `TRIPLE,...`

CLAUSE          | Examples
----------------|---------
ASSERTION       | `TRIPLE.` `true => GRAPH.`
FORWARD_RULE    | `GRAPH => GRAPH.`
INFERENCE_FUSE  | `GRAPH => false.`
QUERY           | `GRAPH => true.`
ANSWER          | `GRAPH => true.`
BACKWARD_RULE   | `TRIPLE :- GRAPH,PROLOG.`


## Installation and test:
```
$ git clone https://github.com/IDLabResearch/Webeye
$ cd Webeye
$ npm install tau-prolog
$ cd examples
$ ./test
```


## Background

- Book of Markus Triska: [The Power of Prolog](https://www.metalevel.at/prolog)
