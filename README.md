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

[Heiseneye](https://github.com/IDLabResearch/Heiseneye) is using the following [ISO Prolog notation](https://en.wikipedia.org/wiki/Prolog#ISO_Prolog):

| Term     | Examples                                                                                            |
| -------- | --------------------------------------------------------------------------------------------------- |
| IRI      | `'http://example.org/etc#socrates'`                                                                 |
| literal  | `"Hello world!"`                                                                                    |
|          | `1.52`                                                                                              |
|          | `true`                                                                                              |
|          | `'http://www.w3.org/2001/XMLSchema#date'("2022-01-15")`                                             |
| bnode    | `'https://idlabresearch.github.io/.well-known/genid/9453595560568678716#sk1'`                       |
| quickvar | `X` `_var2` `_`                                                                                     |
| list     | `[`**`terms`**`]`                                                                                   |
|          | `[`**`terms`**`|`**`list`**`]`                                                                      |
| class    | `'http://example.org/etc#Woman'(`**`term`**`)`                                                      |
| triple   | `'http://example.org/etc#location'(`**`term`**`,`**`term`**`)`                                      |
| graph    | `('http://example.org/etc#pred1'(`**`terms`**`),'http://example.org/etc#pred9'(`**`terms`**`),...)` |

| Clause   | Examples                                                                                            |
| -------- | --------------------------------------------------------------------------------------------------- |
| fact     | `'http://example.org/etc#location'(`**`term`**`,`**`term`**`).`                                     |
| rule     | **`graph`**` => `**`graph`**`.`                                                                     |
|          | **`triple`**` <= `**`graph`**`.`                                                                     |

## Background

- Book of Markus Triska: [The Power of Prolog](https://www.metalevel.at/prolog)
