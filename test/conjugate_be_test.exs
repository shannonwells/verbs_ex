defmodule ConjugateBeTest do
  use ExUnit.Case, async: true
  doctest ConjugateBe

  test "conjugate" do
    options = %{:tense => "past",:person => "first", :plurality => "singular"}
    assert "I " <> ConjugateBe.conjugate(options) == "I was"

    options = %{:tense => "future",:person => "will be", :plurality => "singular"}
    assert "I " <> ConjugateBe.conjugate(options) == "I will be"

    options = %{:tense => "present",:person => "second", :plurality => "singular"}
    assert "you " <> ConjugateBe.conjugate(options) == "you are"

    options = %{:tense => "present",:person => "second", :plurality => "plural"}
    assert "you " <> ConjugateBe.conjugate(options) == "you are"

    options = %{:tense => "present",:person => "third", :plurality => "singular"}
    assert ("she " <> ConjugateBe.conjugate(options)) == "she is"

    options = %{:tense => "past",:person => "third", :plurality => "singular"}
    assert "he " <> ConjugateBe.conjugate(options) == "he was"

    options = %{:tense => "present",:person => "first", :plurality => "plural"}
    assert "we " <> ConjugateBe.conjugate(options) == "we are"

    options = %{:tense => "present",:person => "third", :plurality => "plural"}
    assert "they " <> ConjugateBe.conjugate(options) == "they are"

    # they were
    options = %{:tense => "past",:person => "third", :plurality => "plural"}
    assert "they " <> ConjugateBe.conjugate(options) == "they were"
  end
end