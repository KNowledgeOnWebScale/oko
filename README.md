# Heiseneye

### Reasoning

Heiseneye performs forward chaining for rules like `PREM => CONC` and  
backward chaining for rules like `CONC <= PREM`.  
There is no principle to tell whether to use forward or backward chaining.  

Queries are posed and answered as `PREM => yes` so the answers are also  
queries be it with some parts substituted and eventually containing more  
variables than in the original query.  

Install [Rust](https://www.rust-lang.org/) based [Scryer Prolog](https://github.com/mthom/scryer-prolog#installing-scryer-prolog)
and run the [examples and test cases](./etc) via
```
$ ./test
```
giving [result](./result.pl).

### Webizing

Heiseneye is using [ISO Prolog notation](https://en.wikipedia.org/wiki/Prolog#ISO_Prolog):

- Uniform resource identifiers are atoms like `'http://example.org/etc#socrates'`
- Literals are strings like `"Hello world!"`, numbers like `1.52` and booleans like `true`
- Typed literals are predicates like `'http://www.w3.org/2001/XMLSchema#date'("2022-01-15")`
- Blank nodes are Skolem functions like `'https://github.com/IDLabResearch/Heiseneye/etc/likes#sk1'(A,B,C)`
- Classes are unary predicates like `'http://example.org/etc#Woman'('http://example.org/etc#Emmy_Noether')`
- Triples are binary predicates like `'http://example.org/etc#location'('http://example.org/etc#i1','http://example.org/etc#gent').`

### Background

- Book of Markus Triska: [The Power of Prolog](https://www.metalevel.at/prolog)
