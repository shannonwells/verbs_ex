defmodule ConjugateHaveTest do
  use ExUnit.Case, async: true
  doctest ConjugateHave

  test "conjugate" do
    options = %{:tense => "present",:person => "first", :plurality => "singular"}
    assert "I " <> ConjugateHave.conjugate(options) == "I have"

    options = %{:tense => "present",:person => "third", :plurality => "singular"}
    assert "she " <> ConjugateHave.conjugate(options) == "she has"


    options = %{:tense => "present",:person => "second", :plurality => "singular"}
    assert "you " <> ConjugateHave.conjugate(options) == "you have"
    options = %{:tense => "present",:person => "second", :plurality => "plural"}
    assert "you " <> ConjugateHave.conjugate(options) == "you have"

    # I had
    options = %{:tense => "past", :person => "first", :plurality => "plural"}
    assert "I " <> ConjugateHave.conjugate(options) == "I had"
  end

end
