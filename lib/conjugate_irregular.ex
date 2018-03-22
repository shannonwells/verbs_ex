defmodule ConjugateIrregular do
  require Irregulars
  require Suffix

  def is_irregular?(infinitive) do
    Map.has_key?(Irregulars.verb_forms, infinitive) end

  def conjugate(infinitive, options) do
    case options[:tense] do
      :past -> fetch_past(infinitive)
      :past_perfect -> past_perfect(infinitive, options)
      :present_progressive -> present_progressive(infinitive, options)
      :past_progressive -> past_progressive(infinitive, options)
      :present -> present(infinitive, options)
      :future -> "will " <> infinitive
    end
  end

  defp present(infinitive, options) do
    case options[:person] do
      :third -> third_present(infinitive, options[:plurality])
      _ -> infinitive
    end
  end

  defp third_present(infinitive, plurality) do
    case plurality do
      :singular -> Suffix.with_s(infinitive)
      :plural -> infinitive
    end
  end

  defp present_progressive(infinitive, options) do
    (options
     |> Map.merge(%{:tense => :present})
     |> ConjugateBe.conjugate)
    <> " " <> Suffix.with_ing(infinitive)
  end

  defp past_progressive(infinitive, options) do
    (options
     |> Map.merge(%{:tense => :past})
     |> ConjugateBe.conjugate)
    <> " " <> Suffix.with_ing(infinitive)
  end

  defp past_perfect(infinitive, options) do
    (options
     |> Map.merge(%{:tense => :present})
     |> ConjugateHave.conjugate)
    <> " " <> fetch_past_participle(infinitive)
  end

  defp fetch_past(infinitive) do
    {:ok, form} =
      Map.get(Irregulars.verb_forms, infinitive)
      |> Enum.fetch(0)
    form
  end

  defp fetch_past_participle(infinitive) do
    {:ok, form} =
      Map.get(Irregulars.verb_forms, infinitive)
      |> Enum.fetch(1)
    form
  end

end
