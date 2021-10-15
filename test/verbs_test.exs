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
  end

  test "basic past" do
    options = %{:tense => "past",:person => "first", :plurality => "singular"}
    assert "I " <> Verbs.conjugate("work", options) == "I worked"
  end


  test "irregulars" do
    # she drinks
    options = %{:tense => "present",:person => "third", :plurality => "singular"}
    assert "she " <> Verbs.conjugate("drink", options) == "she drinks"
  end
end
