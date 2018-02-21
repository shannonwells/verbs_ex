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

  test "to have" do
    # they are
    options = %{:tense => "present",:person => "third", :plurality => "plural"}
    assert Verbs.conjugate("be", options) == "are"
  end

  test "to be" do
    # she is
    options = %{:tense => "present",:person => "third", :plurality => "singular"}
    assert Verbs.conjugate("be", options) == "is"
  end
end
