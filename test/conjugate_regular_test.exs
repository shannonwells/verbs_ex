defmodule ConjugateRegularTest do
  use ExUnit.Case, async: true
  doctest ConjugateRegular

  test "carry, present" do
    verb = "carry"
    tense = "present"

    options = %{:tense => tense, :person => "first", :plurality => "singular"}
    assert "I " <> ConjugateRegular.conjugate(verb, options) == "I carry"

    options = %{:tense => tense, :person => "second", :plurality => "singular"}
    assert "You " <> ConjugateRegular.conjugate(verb, options) == "You carry"

    options = %{:tense => tense, :person => "third", :plurality => "singular"}
    assert "He " <> ConjugateRegular.conjugate(verb, options) == "He carries"

    options = %{:tense => tense, :person => "first", :plurality => "plural"}
    assert "We " <> ConjugateRegular.conjugate(verb, options) == "We carry"

    options = %{:tense => tense, :person => "second", :plurality => "plural"}
    assert "You " <> ConjugateRegular.conjugate(verb, options) == "You carry"

    options = %{:tense => tense, :person => "third", :plurality => "plural"}
    assert "They " <> ConjugateRegular.conjugate(verb, options) == "They carry"
  end

  test "work, past" do
    verb = "work"
    tense = "past"

    options = %{:tense => tense, :person => "first", :plurality => "singular"}
    assert "I " <> ConjugateRegular.conjugate(verb, options) == "I worked"

    options = %{:tense => tense, :person => "second", :plurality => "singular"}
    assert "You " <> ConjugateRegular.conjugate(verb, options) == "You worked"

    options = %{:tense => tense, :person => "third", :plurality => "singular"}
    assert "He " <> ConjugateRegular.conjugate(verb, options) == "He worked"

    options = %{:tense => tense, :person => "first", :plurality => "plural"}
    assert "We " <> ConjugateRegular.conjugate(verb, options) == "We worked"

    options = %{:tense => tense, :person => "second", :plurality => "plural"}
    assert "You " <> ConjugateRegular.conjugate(verb, options) == "You worked"

    options = %{:tense => tense, :person => "third", :plurality => "plural"}
    assert "They " <> ConjugateRegular.conjugate(verb, options) == "They worked"
  end

  test "work, future" do
    verb = "work"
    tense = "future"

    options = %{:tense => tense, :person => "first", :plurality => "singular"}
    assert "I " <> ConjugateRegular.conjugate(verb, options) == "I will work"

    options = %{:tense => tense, :person => "second", :plurality => "singular"}
    assert "You " <> ConjugateRegular.conjugate(verb, options) == "You will work"

    options = %{:tense => tense, :person => "third", :plurality => "singular"}
    assert "He " <> ConjugateRegular.conjugate(verb, options) == "He will work"

    options = %{:tense => tense, :person => "first", :plurality => "plural"}
    assert "We " <> ConjugateRegular.conjugate(verb, options) == "We will work"

    options = %{:tense => tense, :person => "second", :plurality => "plural"}
    assert "You " <> ConjugateRegular.conjugate(verb, options) == "You will work"

    options = %{:tense => tense, :person => "third", :plurality => "plural"}
    assert "They " <> ConjugateRegular.conjugate(verb, options) == "They will work"
  end

  test "past_perfect" do
    verb = "work"
    tense = "past_perfect"

    options = %{:tense => tense, :person => "first", :plurality => "singular"}
    assert "I " <> ConjugateRegular.conjugate(verb, options) == "I had worked"

    options = %{:tense => tense, :person => "second", :plurality => "singular"}
    assert "You " <> ConjugateRegular.conjugate(verb, options) == "You had worked"

    options = %{:tense => tense, :person => "third", :plurality => "singular"}
    assert "He " <> ConjugateRegular.conjugate(verb, options) == "He had worked"

    options = %{:tense => tense, :person => "first", :plurality => "plural"}
    assert "We " <> ConjugateRegular.conjugate(verb, options) == "We had worked"

    options = %{:tense => tense, :person => "second", :plurality => "plural"}
    assert "You " <> ConjugateRegular.conjugate(verb, options) == "You had worked"

    options = %{:tense => tense, :person => "third", :plurality => "plural"}
    assert "They " <> ConjugateRegular.conjugate(verb, options) == "They had worked"
  end


  test "live, present progressive" do
    verb = "live"
    tense = "present_progressive"

    options = %{:tense => tense, :person => "first", :plurality => "singular"}
    assert "I " <> ConjugateRegular.conjugate(verb, options) == "I am living"

    options = %{:tense => tense, :person => "second", :plurality => "singular"}
    assert "You " <> ConjugateRegular.conjugate(verb, options) == "You are living"

    options = %{:tense => tense, :person => "third", :plurality => "singular"}
    assert "She " <> ConjugateRegular.conjugate(verb, options) == "She is living"

    options = %{:tense => tense, :person => "first", :plurality => "plural"}
    assert "We " <> ConjugateRegular.conjugate(verb, options) == "We are living"

    options = %{:tense => tense, :person => "second", :plurality => "plural"}
    assert "You " <> ConjugateRegular.conjugate(verb, options) == "You are living"

    options = %{:tense => tense, :person => "third", :plurality => "plural"}
    assert "They " <> ConjugateRegular.conjugate(verb, options) == "They are living"
  end

  test "die, past progressive" do
    verb = "die"
    tense = "past_progressive"

    options = %{:tense => tense, :person => "first", :plurality => "singular"}
    assert "I " <> ConjugateRegular.conjugate(verb, options) == "I was dying"

    options = %{:tense => tense, :person => "second", :plurality => "singular"}
    assert "You " <> ConjugateRegular.conjugate(verb, options) == "You were dying"

    options = %{:tense => tense, :person => "third", :plurality => "singular"}
    assert "He " <> ConjugateRegular.conjugate(verb, options) == "He was dying"

    options = %{:tense => tense, :person => "first", :plurality => "plural"}
    assert "We " <> ConjugateRegular.conjugate(verb, options) == "We were dying"

    options = %{:tense => tense, :person => "second", :plurality => "plural"}
    assert "You " <> ConjugateRegular.conjugate(verb, options) == "You were dying"

    options = %{:tense => tense, :person => "third", :plurality => "plural"}
    assert "They " <> ConjugateRegular.conjugate(verb, options) == "They were dying"

  end

  test "ends two consonants" do
    [      %{tense: "past", verb: "hack", expected: "hacked"},
    ]
  end

  test "-er, and odd, not irregular verb forms" do
    [
      %{tense: "past", verb: "clobber", expected: "clobbered"},
      %{tense: "past", verb: "shatter", expected: "shattered"},
      %{tense: "past", verb: "hack", expected: "hacked"},
      %{tense: "past", verb: "miter", expected: "mitered"},
      %{tense: "past", verb: "corner", expected: "cornered"},
      %{tense: "past", verb: "belittle", expected: "belittled"},
    ]
    |> Enum.each( fn tc ->
      options = %{:tense => tc.tense, :person => "first", :plurality => "singular"}
      assert ConjugateRegular.conjugate(tc.verb, options) == tc.expected
    end)
  end
end
