# Heiseneye

## Reasoning

[Heiseneye](https://github.com/IDLabResearch/Heiseneye) performs forward chaining for rules like `PREM => CONC` and backward chaining for rules like `CONC <= PREM`.
There is no principle to tell whether to use forward chaining or backward chaining.

Queries are posed and answered as `PREM => true` so the answers are also queries be it with some parts
substituted and eventually containing more variables than in the original query.

Install [Rust](https://www.rust-lang.org/) based [Scryer Prolog](https://github.com/mthom/scryer-prolog#installing-scryer-prolog)
and run the [examples and test cases](./etc) via
```
$ ./test
```
giving [result](./result.pl).

## Webizing

[Heiseneye](https://github.com/IDLabResearch/Heiseneye) is using [ISO Prolog notation](https://en.wikipedia.org/wiki/Prolog#ISO_Prolog):

TERM            | Examples
----------------|---------
IRI             | `'http://example.org/etc#socrates'`
VARIABLE        | `X` `_abc`
LITERAL         | `"abc"` `1.52` `1e-18` `pi` `dt("2022-01-15",'http://www.w3.org/2001/XMLSchema#date')`
LIST            | `[TERM,...]` `[TERM,...\|LIST]`
TRIPLE          | `IRI(TERM,TERM)`
GRAPH           | `TRIPLE,...`

CLAUSE          | Examples
----------------|---------
ASSERTION       | `true => GRAPH.`
FORWARD_RULE    | `GRAPH => GRAPH.`
INFERENCE_FUSE  | `GRAPH => false.`
QUERY           | `GRAPH => true.`
ANSWER          | `GRAPH => true.`
BACKWARD_RULE   | `TRIPLE <= GRAPH,PROLOG.`

## Background

- Book of Markus Triska: [The Power of Prolog](https://www.metalevel.at/prolog)
