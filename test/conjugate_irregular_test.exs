defmodule ConjugateIrregularTest do
  use ExUnit.Case, async: true
  doctest ConjugateIrregular

  test "is_irregular?" do
    assert ConjugateIrregular.is_irregular?("awake") == true
    assert ConjugateIrregular.is_irregular?("play") == false
  end

  test "conjugate" do
    # I awoke
    options = %{:tense => "past",:person => "first", :plurality => "singular"}
    assert "I " <> ConjugateIrregular.conjugate("awake", options) == "I awoke"
  end
end