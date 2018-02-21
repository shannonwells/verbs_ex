# Verbs

English verb conjugation in Elixir.

Conjugates most common English verbs for all persons, tenses, standard aspects, and modern moods (with active diathesis). Standard and exceptional spelling rules are obeyed.

```
      iex> Verbs.conjugate :be, :tense => "past", :person => "second", :plurality => "singular", :aspect => "perfective"
      => "were"

      Verb.conjugate "sleep" :tense => :future, :person => :first, :plurality => :singular, :aspect => :progressive, :subject => true
      => "will be sleeping"
```  

## Installation

  Add this line to your mix.exs dependencies:
  `{:dep_from_git, git: https://github.com/shannonwells/verbs.git, tag: "0.1.0"},

## Options

You can also use abbreviations for the conjugations. There are no default values.

### <tt>:tense</tt>

<tt>:past</tt>, <tt>:present</tt>, or <tt>:future</tt>.

### <tt>:person</tt>

<tt>:first</tt>, <tt>:second</tt>, or <tt>:third</tt>

### <tt>:plurality</tt>

<tt>:singular</tt> or <tt>:plural</tt>

### <tt>:aspect</tt>

<tt>:habitual</tt>, <tt>:perfect</tt>, <tt>:perfective</tt>, <tt>:progressive</tt>, or <tt>:prospective</tt>
See below for a guide to verb aspect.

### <tt>:mood</tt>

<tt>:indicative</tt>, <tt>:imperative</tt>, or <tt>:subjunctive</tt>

## Tense/aspect quick reference

  EXAMPLE                   TENSE    ASPECT

  I usually accepted        past     habitual
  I had accepted            past     perfect
  I accepted                past     perfective
  I was accepting           past     progressive
  I was about to accept     past     prospective

  I accept                  present  habitual
  I have accepted           present  perfect
  I am having accepted      present  perfective
  I am accepting            present  progressive
  I am about to accept      present  prospective

  I will accept             future   habitual
  I will have accepted      future   perfect
  I will be having accepted future   perfective
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
