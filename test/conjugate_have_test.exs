defmodule ConjugateHaveTest do
  use ExUnit.Case, async: true
  doctest ConjugateHave

  test "conjugate" do
    # you have
    options = %{:tense => "present",:person => "second", :plurality => "plural"}
    assert "you " <> ConjugateHave.conjugate(options) == "you have"

    # she has
    options = %{:tense => "present",:person => "third", :plurality => "singular"}
    assert "she " <> ConjugateHave.conjugate(options) == "she has"

    # I had
    options = %{:tense => "past", :person => "first", :plurality => "plural"}
    assert "I " <> ConjugateHave.conjugate(options) == "I had"
  end


end
