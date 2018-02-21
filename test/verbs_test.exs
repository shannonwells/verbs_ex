# Code.load_file("../lib/verbs.ex", __DIR__)

# ExUnit.configure exclude: :pending, trace: true

defmodule VerbsTest do
  # 3) Notice we pass "async: true", this runs the test case
  #    concurrently with other test cases. The individual tests
  #    within each test case are still run serially.


  use ExUnit.Case, async: true
  doctest Verbs

  test "basic present" do
    assert Verbs.conjugate("play", %{:tense => "present",:person => "third", :plurality => "singular"}) == "plays"
  end

  test "to be" do
    options = %{:tense => "present",:person => "first", :plurality => "singular"}
    assert "I " <> Verbs.conjugate("be", options) == "I am"

    options = %{:tense => "past",:person => "first", :plurality => "singular"}
    assert "I " <> Verbs.conjugate("be", options) == "I was"

    options = %{:tense => "future",:person => "will be", :plurality => "singular"}
    assert "I " <> Verbs.conjugate("be", options) == "I will be"

    options = %{:tense => "present",:person => "second", :plurality => "singular"}
    assert "you " <> Verbs.conjugate("be", options) == "you are"

    options = %{:tense => "present",:person => "second", :plurality => "plural"}
    assert "you " <> Verbs.conjugate("be", options) == "you are"

    options = %{:tense => "present",:person => "third", :plurality => "singular"}
    assert ("she " <> Verbs.conjugate("be", options)) == "she is"

    options = %{:tense => "past",:person => "third", :plurality => "singular"}
    assert "he " <> Verbs.conjugate("be", options) == "he was"

    options = %{:tense => "present",:person => "first", :plurality => "plural"}
    assert "we " <> Verbs.conjugate("be", options) == "we are"

    options = %{:tense => "present",:person => "third", :plurality => "plural"}
    assert "they " <> Verbs.conjugate("be", options) == "they are"

    # they were
    options = %{:tense => "past",:person => "third", :plurality => "plural"}
    assert "they " <> Verbs.conjugate("be", options) == "they were"

  end

  test "to have" do
    # you have
    options = %{:tense => "present",:person => "second", :plurality => "plural"}
    assert "you " <> Verbs.conjugate("have", options) == "you have"

    # she has
    options = %{:tense => "present",:person => "third", :plurality => "singular"}
    assert "she " <> Verbs.conjugate("have", options) == "she has"

    # I had
    options = %{:tense => "past", :person => "first", :plurality => "plural"}
    assert "I " <> Verbs.conjugate("have", options) == "I had"
  end

  test "irregulars" do
    # I awoke
    options = %{:tense => "past",:person => "first", :plurality => "singular"}
    assert "I " <> Verbs.conjugate("awake", options) == "I awoke"

    # she drinks
    options = %{:tense => "present",:person => "third", :plurality => "singular"}
    assert "she " <> Verbs.conjugate("drink", options) == "she drinks"
  end
end
