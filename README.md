# Webeye

Webeye is doing webized reasoning via forward and backward chaining.
It participates in dialogues leading to necessary and sufficient answers, supported by proof steps, so that action can take place.

## Webized reasoning

[Webeye](https://github.com/IDLabResearch/Webeye) is using __n3p__ syntax:

TERM            | Examples
----------------|---------
IRI             | `'example.org/ns#Socrates'`
VARIABLE        | `X` `_abc`
LITERAL         | `"abc"` `1.52` `1e-18` `pi` `dt("2022-01-15",'www.w3.org/2001/XMLSchema#date')`
LIST            | `[TERM,...]` `[TERM,...`\|`LIST]` `[]`
TRIPLE          | `IRI(TERM,TERM)`
GRAPH           | `TRIPLE,...`

CLAUSE          | Examples
----------------|---------
ASSERTION       | `TRIPLE.` `true => GRAPH.`
FORWARD_RULE    | `GRAPH => GRAPH.`
QUERY           | `GRAPH => true.`
ANSWER          | `GRAPH => true.`
INFERENCE_FUSE  | `GRAPH => false.`
BACKWARD_RULE   | `TRIPLE <= GRAPH.`

Webeye performs forward chaining for a `FORWARD_RULE` and backward chaining for a `BACKWARD_RULE`.

Queries are posed and answered as `GRAPH => true.` so the answers are also queries be it with
some parts substituted and eventually containing more variables than in the original query.
This forms a dialogue leading to necessary and sufficient answers, supported by proof steps, so that action can take place.

The builtin triples are:

- `'idlabresearch.github.io/ns#builtin'(`[`Subject`](https://www.deransart.fr/prolog/bips.html)`,[])`
- `'idlabresearch.github.io/ns#pso_triple'([P,S,O],Triple)`

## Installation and test

Install [Rust](https://www.rust-lang.org/tools/install) and [Scryer Prolog](https://github.com/mthom/scryer-prolog#installing-scryer-prolog) and then

```
$ git clone github.com/IDLabResearch/Webeye
$ cd Webeye
$ ./test
```

## Background

- Personal notes by Tim Berners-Lee: [Design Issues](https://www.w3.org/DesignIssues/)
- Book of Markus Triska: [The Power of Prolog](https://www.metalevel.at/prolog)
