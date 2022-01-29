# Heiseneye

## Reasoning

[Heiseneye](https://github.com/IDLabResearch/Heiseneye) performs forward chaining for rules like `PREM => CONC` and backward chaining for rules like `CONC <= PREM`.
There is no principle to tell whether to use forward chaining or backward chaining.

Queries are posed and answered as `PREM => yes` so the answers are also queries be it with some parts
substituted and eventually containing more variables than in the original query.

Install [Rust](https://www.rust-lang.org/) based [Scryer Prolog](https://github.com/mthom/scryer-prolog#installing-scryer-prolog)
and run the [examples and test cases](./etc) via
```
$ ./test
```
giving [result](./result.pl).

## Webizing

[Heiseneye](https://github.com/IDLabResearch/Heiseneye) is using [ISO Prolog](https://en.wikipedia.org/wiki/Prolog#ISO_Prolog) **terms**:

- **IRIs** like the atom `'http://example.org/etc#socrates'`
- **Literals** like `"Hello world!"`, `1.52`, `true` and `'http://www.w3.org/2001/XMLSchema#date'("2022-01-15")`
- **Bnodes** like the Skolem IRI `'https://idlabresearch.github.io/.well-known/genid/9453595560568678716#sk1'`
- **Quickvars** like `X`, `_var2` and `_`
- **Lists** like `[`**`terms`**`]` and `[`**`terms`**`|`**`list`**`]`
- **Classes** like the unary predicate `'http://example.org/etc#Woman'('http://example.org/etc#Emmy_Noether')`
- **Triples** like the binary predicate `'http://example.org/etc#location'('http://example.org/etc#i1','http://example.org/etc#gent')`
- **Graphs** like the conjunction `('http://example.org/etc#pred1'(`**`terms`**`),'http://example.org/etc#pred9'(`**`terms`**`),...)`

## Background

- Book of Markus Triska: [The Power of Prolog](https://www.metalevel.at/prolog)
