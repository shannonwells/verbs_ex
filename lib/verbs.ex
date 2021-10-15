defmodule Verbs do
  #  require ConjugateBe
  #  require ConjugateHave
  #  require ConjugateRegular
  #  require ConjugateIrregular
  ConjugateIrregular
  @doc """
    Example:
    Verb.conjugate("play",
      :tense => "past", :person => "1", :plurality => "singular")
      "play"
  """

  def conjugate(infinitive, options) do
    cond do
      String.match?(infinitive, ~r/[A-Z][a-z]+/) -> conjugate_is_capitalized(infinitive, options)
      String.match?(infinitive, ~r/[A-Z]+/) -> conjugate_allcaps(infinitive, options)
      true -> conjugate_internal(infinitive, options)
    end
  end

  defp conjugate_is_capitalized(infinitive, options) do
    infinitive
    |> String.downcase
    |> conjugate_internal(options)
    |> String.capitalize
  end

  defp conjugate_allcaps(infinitive, options) do
    infinitive
    |> String.downcase
    |> conjugate_internal(options)
    |> String.upcase
  end

  defp conjugate_internal("have", options) do
    ConjugateHave.conjugate(options) end
  defp conjugate_internal("be", options) do
    ConjugateBe.conjugate(options) end

  defp conjugate_internal(infinitive, options) do
    if (ConjugateIrregular.is_irregular?(infinitive)) do
      ConjugateIrregular.conjugate(infinitive, options)
    else
      ConjugateRegular.conjugate(infinitive, options)
    end
  end

end
