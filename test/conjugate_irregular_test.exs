defmodule ConjugateIrregularTest do
  use ExUnit.Case, async: true
  doctest ConjugateIrregular

  test "is_irregular?" do
    assert ConjugateIrregular.is_irregular?("awake") == true
    assert ConjugateIrregular.is_irregular?("play") == false
    assert ConjugateIrregular.is_irregular?("flee") == true
  end

  test "present" do
    options = %{:tense => "present", :person => "irst", :plurality => "singular"}
    assert "I " <> ConjugateIrregular.conjugate("Awake", options) == "I Awake"

    options = %{:tense => "present", :person => "first", :plurality => "singular"}
    assert "They " <> ConjugateIrregular.conjugate("run", options) == "They run"
  end

  test "past" do
    options = %{:tense => "past", :person => "first", :plurality => "singular"}
    assert "I " <> ConjugateIrregular.conjugate("awake", options) == "I awoke"
    assert "I " <> ConjugateIrregular.conjugate("flee", options) == "I fled"


    options = %{:tense => "past", :person => "first", :plurality => "singular"}
    assert "They " <> ConjugateIrregular.conjugate("run", options) == "They ran"

    options = %{:tense => "past", :person => "third", :plurality => "singular"}
    assert "She " <> ConjugateIrregular.conjugate("leave", options) == "She left"

  end

  test "past_perfect" do
    options = %{:tense => "past_perfect", :person => "first", :plurality => "singular"}
    assert "I " <> ConjugateIrregular.conjugate("awake", options) == "I have awoken"

    options = %{:tense => "past_perfect", :person => "third", :plurality => "plural"}
    assert "They " <> ConjugateIrregular.conjugate("run", options) == "They have run"

    options = %{:tense => "past_perfect", :person => "third", :plurality => "singular"}
    assert "Elvis " <> ConjugateIrregular.conjugate("leave", options) == "Elvis has left"
  end

  test "past_progressive" do
    options = %{:tense => "past_progressive", :person => "second", :plurality => "plural"}
    assert "They " <> ConjugateIrregular.conjugate("run", options) == "They were running"
  end

  test "present_progressive" do
    options = %{:tense => "present_progressive", :person => "first", :plurality => "singular"}
    assert "I " <> ConjugateIrregular.conjugate("leave", options) == "I am leaving"

    options = %{:tense => "present_progressive", :person => "third", :plurality => "plural"}
    assert "They " <> ConjugateIrregular.conjugate("leave", options) == "They are leaving"
  end

  test "future" do

  end

end
