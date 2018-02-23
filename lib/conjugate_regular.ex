defmodule ConjugateRegular do

  @consonant_pattern "[bcdfghjklmnpqrstvwxz]"
  @doubled_consonant_pattern "[bcdfghklmnprstz]"
  @vowel_pattern "[aeiouy]"

  def conjugate(infinitive, options) do
    cond do
      ends_consonant_vowel_double_consonant?(infinitive) -> IO.puts("cvcc")
      ends_consonant_plus_y?(infinitive) -> IO.puts("cy")
      ends_consonant_plus_e?(infinitive) -> IO.puts("ce")
    end
  end

  def ends_consonant_vowel_double_consonant?(infinitive) do
    pattern = @consonant_pattern <> @vowel_pattern <> @doubled_consonant_pattern  <> "$"
    {:ok, regex} = Regex.compile(pattern, "i")
    Regex.match?(regex, infinitive)
  end

  def ends_consonant_plus_y?(infinitive) do
    {:ok, regex} = Regex.compile(@consonant_pattern <> "y" <> "$", "i")
    Regex.match?(regex, infinitive)
  end

  def ends_consonant_plus_e?(infinitive) do
    {:ok, regex} = Regex.compile(@consonant_pattern <> "e" <> "$","i")
    Regex.match?(regex, infinitive)
  end

end
