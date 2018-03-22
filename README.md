# Verbs (pre-alpha)

English verb conjugation in Elixir.

Conjugates most common English verbs for all persons, tenses, standard aspects, and modern moods (with active diathesis). Standard and exceptional spelling rules are obeyed.

```
Verbs.conjugate :be, :tense => :past, :person => :second, :plurality => :singular
iex> "were"

Verb.conjugate "sleep" :tense => :future, :person => :first, :plurality => :singular
"will sleep"
```  

## Installation

Add this line to your mix.exs dependencies:
```
{ :dep_from_git, git: https://github.com/shannonwells/verbs.git, tag: "0.5.3"},
```
or from Hex:

```elixir
def deps do
  [
    {:verbs, "~> 0.5.3"}
  ]
end
```

## Parameters
Parameters aren't optional; tense, person and plurality are required.  Option values are atoms.

__:tense__ `:past, :present, :future, :present_progressive, :past_progressive, :past_perfect`

__:person__  `:first, :second, :third`

__:plurality__ `:singular, :plural`


## Tense/aspect quick reference

    EXAMPLE                   TENSE

    I accepted                past
    I had accepted            past perfect
    I was accepting           past progressive

    I accept                  present
    I have accepted           present perfect
    I am accepting            present progressive

    I will accept             future
    I will be accepting       future   progressive

## Acknowledgements

* (Andy Rossmeissl - rossmeissl/verbs)[https://github.com/rossmeissl/verbs]
* (Lingua::Conjugate)[http://cpansearch.perl.org/src/RWG/Lingua-EN-Conjugate-0.308/lib/Lingua/EN/Conjugate.pm]
* (Pat Byrd and Tom McKlin)[http://www2.gsu.edu/~wwwesl/egw/pluralsv.htm]
* (Rick Harrison)[http://www.rickharrison.com/language/aspect.html]
* (Anatoli Makarevich)[https://github.com/makaroni4] for (#6)[https://github.com/rossmeissl/verbs/pull/6]

## Copyright

Copyright (c) 2018 Shannon E. Wells. See LICENSE for details.
