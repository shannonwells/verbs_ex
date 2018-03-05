defmodule Suffix do

  @consonant_pattern "[bcdfghjklmnpqrstvwxz]"
  @doubled_consonant_pattern "[bcdfghklmnprstz]"
  @vowel_pattern "[aeiouy]"
  @doubled_vowel_pattern "[aeiouy]"

  def with_ed(infinitive) do
    cond do
      ends_consonant_plus_e?(infinitive) -> infinitive <> "d"
      ends_consonant_plus_y?(infinitive) ->
        String.replace_suffix(infinitive, "y", "ied")
      ends_vowel_lf?(infinitive) ->
        String.replace_suffix(infinitive, "lf", "lved")
      ends_consonant_vowel_consonant?(infinitive) ->
        infinitive <> String.last(infinitive) <> "ed"
      true -> infinitive <> "ed"
    end
  end

  def with_ing(infinitive) do
    cond do
      ends_ie?(infinitive) -> String.replace_suffix(infinitive, "ie", "ying")
      ends_e_not_ie?(infinitive) -> String.replace_suffix(infinitive, "e", "ing")
      ends_vowel_lf?(infinitive) -> String.replace_suffix(infinitive, "lf", "lving")
      ends_consonant_vowel_consonant?(infinitive) ->
        infinitive <> String.last(infinitive) <> "ing"
      true -> infinitive <> "ing"
    end
  end

  def with_s(infinitive) do
    cond do
      Regex.match?(~r/ch$/i, infinitive) -> infinitive <> "es"
      ends_consonant_plus_e?(infinitive) -> infinitive <> "s"
      ends_consonant_plus_y?(infinitive) -> String.replace_suffix(infinitive, "y", "ies")
      ends_vowel_lf?(infinitive) -> String.replace_suffix(infinitive, "lf", "lves")
      ends_aiou?(infinitive) -> infinitive <> "es"
      true -> infinitive <> "s"
    end
  end

  def ends_aiou?(infinitive) do
    Regex.match?(~r/[aiou]$/i, infinitive)
  end

  def ends_consonant_vowel_consonant?(infinitive) do
    pattern = @consonant_pattern <>
              @doubled_vowel_pattern <>
              @doubled_consonant_pattern  <> "$"
    {:ok, regex} = Regex.compile(pattern, "i")
    Regex.match?(regex, infinitive)
  end

  def ends_consonant_plus_y?(infinitive) do
    {:ok, regex} = Regex.compile(@consonant_pattern <> "y$", "i")
    Regex.match?(regex, infinitive)
  end

  def ends_consonant_plus_e?(infinitive) do
    {:ok, regex} = Regex.compile(@consonant_pattern <> "e$","i")
    Regex.match?(regex, infinitive)
  end

  def ends_ie?(infinitive) do
    Regex.match?(~r/ie$/i, infinitive)
  end

  def ends_e_not_ie?(infinitive) do
    Regex.match?(~r/[^i]e$/i, infinitive)
  end

  def ends_vowel_lf?(infinitive) do
    {:ok, regex} = Regex.compile(@vowel_pattern <> "lf$")
    Regex.match?(regex, infinitive)
  end

end
