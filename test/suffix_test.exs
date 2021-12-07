defmodule SuffixTest do
  use ExUnit.Case, async: true
  doctest Suffix

  test "ends_consonant_vowel_double_consonant?" do
    assert Suffix.ends_consonant_vowel_consonant?("vote") == false
    assert Suffix.ends_consonant_vowel_consonant?("stitch") == false
    assert Suffix.ends_consonant_vowel_consonant?("inn") == false
    assert Suffix.ends_consonant_vowel_consonant?("carry") == false
    assert Suffix.ends_consonant_vowel_consonant?("run") == true
  end

  test "ends_consonant_plus_y?" do
    assert Suffix.ends_consonant_plus_y?("vote") == false
    assert Suffix.ends_consonant_plus_y?("stitch") == false
    assert Suffix.ends_consonant_plus_y?("inn") == false
    assert Suffix.ends_consonant_plus_y?("carry") == true
    assert Suffix.ends_consonant_plus_y?("run") == false
  end

  test "ends_e?" do
    assert Suffix.ends_e?("vote") == true
    assert Suffix.ends_e?("stitch") == false
    assert Suffix.ends_e?("inn") == false
    assert Suffix.ends_e?("carry") == false
    assert Suffix.ends_e?("run") == false
  end

  test "ends_ie?" do
    assert Suffix.ends_ie?("lie") == true
    assert Suffix.ends_ie?("hello") == false
  end

  test "ends_e_not_ie?" do
    assert Suffix.ends_e_not_ie?("lie") == false
    assert Suffix.ends_e_not_ie?("hello") == false
    assert Suffix.ends_e_not_ie?("vote") == true
  end

  test "with_ed" do
    assert Suffix.with_ed("vote") == "voted"
    assert Suffix.with_ed("guzzle") == "guzzled"
    assert Suffix.with_ed("row") == "rowed"
    assert Suffix.with_ed("fix") == "fixed"
    assert Suffix.with_ed("stitch") == "stitched"
    assert Suffix.with_ed("pass") == "passed"
    assert Suffix.with_ed("bill") == "billed"
    assert Suffix.with_ed("carry") == "carried"
    assert Suffix.with_ed("ban") == "banned"
    assert Suffix.with_ed("chat") == "chatted"
    assert Suffix.with_ed("prefer") == "preferred"
    assert Suffix.with_ed("pen") == "penned"
    assert Suffix.with_ed("allow") == "allowed"
    assert Suffix.with_ed("half") == "halved"
    assert Suffix.with_ed("laugh") == "laughed"
  end

  test "with_ing" do
    assert Suffix.with_ing("bite") == "biting"
    assert Suffix.with_ing("prepare") == "preparing"
    assert Suffix.with_ing("stitch") == "stitching"
    assert Suffix.with_ing("inn") == "inning"
    assert Suffix.with_ing("carry") == "carrying"
    assert Suffix.with_ing("lie") == "lying"
    assert Suffix.with_ing("run") == "running"
    assert Suffix.with_ing("roll") == "rolling"
    assert Suffix.with_ing("calf") == "calving"
    assert Suffix.with_ing("laugh")== "laughing"
    assert Suffix.with_ing("refer") == "referring"
  end

  test "with_s" do
    assert Suffix.with_s("bite") == "bites"
    assert Suffix.with_s("prepare") == "prepares"
    assert Suffix.with_s("stitch") == "stitches"
    assert Suffix.with_s("inn") == "inns"
    assert Suffix.with_s("carry") == "carries"
    assert Suffix.with_s("lie") == "lies"
    assert Suffix.with_s("run") == "runs"
    assert Suffix.with_s("calf") == "calves"
    assert Suffix.with_s("laugh")== "laughs"
    assert Suffix.with_s("refer") == "refers"
    assert Suffix.with_s("die") == "dies"
  end

#  def "open" do
    # assert Suffix.with_ed("open") == "opened"
    # assert Suffix.with_ed("open") == "opening"
#  end
end
