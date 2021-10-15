# Verbs (pre-alpha)

English verb conjugation in Elixir.

Conjugates most common English verbs for all persons, tenses, standard aspects, and modern moods (with active diathesis). Standard and exceptional spelling rules are obeyed.

```
Verbs.conjugate :be, %{:tense => "past", :person => "second", :plurality => "singular"}
iex> "were"

Verb.conjugate "sleep" %{:tense => "future", :person => "first", :plurality => "singular"}
"will sleep"
```  

## Installation

Add this line to your mix.exs dependencies:
```
{ :dep_from_git, git: https://github.com/shannonwells/verbs.git, tag: "0.1.0"},
```

## 'Options'
The options are currently not optional; tense, person and plurality are required.  Option values must be strings.

__:tense__ past, present, future.

__:person__  first, second, third

__:plurality__ singular, plural

### Not yet implemented
__:aspect__ habitual, perfect, perfective, progressive, prospective
See below for a guide to verb aspect.

__:mood__ - indicative, imperative, subjunctive

## Tense/aspect quick reference

    EXAMPLE                   TENSE    ASPECT

    I accepted                past     perfective
    I had accepted            past     perfect
    I was accepting           past     progressive
    I usually accepted        past     habitual
    I was about to accept     past     prospective

    I accept                  present  habitual
    I have accepted           present  perfect
    I am accepting            present  progressive
    I am about to accept      present  prospective

    I will accept             future   habitual
    I will have accepted      future   perfect
    I will be accepting       future   progressive
    I will be about to accept future   prospective

## Acknowledgements

* (Andy Rossmeissl - rossmeissl/verbs)[https://github.com/rossmeissl/verbs]
* (Lingua::Conjugate)[http://cpansearch.perl.org/src/RWG/Lingua-EN-Conjugate-0.308/lib/Lingua/EN/Conjugate.pm]
* (Pat Byrd and Tom McKlin)[http://www2.gsu.edu/~wwwesl/egw/pluralsv.htm]
* (Rick Harrison)[http://www.rickharrison.com/language/aspect.html]
* (Anatoli Makarevich)[https://github.com/makaroni4] for (#6)[https://github.com/rossmeissl/verbs/pull/6]

## Copyright

Copyright (c) 2018 Shannon E. Wells. See LICENSE for details.
