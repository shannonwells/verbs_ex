defmodule ConjugateRegular do
  require Suffix

  def conjugate(infinitive, options) do
    case options[:tense] do
      "past" -> past(infinitive)
      "past_perfect" -> past_perfect(infinitive, options)
      "present_progressive" -> present_progressive(infinitive, options)
      "past_progressive" -> past_progressive(infinitive, options)
      "present" -> present(infinitive, options)
      "future" -> "will " <> infinitive
    end
  end

  def present(infinitive, options) do
    case options[:person] do
      "third" -> third_present(infinitive, options[:plurality])
      _ -> infinitive
    end
  end

  defp past(infinitive), do: Suffix.with_ed(infinitive)

  defp future(infinitive), do: "will " <> infinitive

  defp present_progressive(infinitive, options) do
    (options
     |> Map.merge(%{:tense => "present"})
     |> ConjugateBe.conjugate)
    <> " " <> Suffix.with_ing(infinitive)
  end

  defp past_progressive(infinitive, options) do
    (options
     |> Map.merge(%{:tense => "past"})
     |> ConjugateBe.conjugate)
    <> " " <> Suffix.with_ing(infinitive)
  end

  # I have worked
  defp past_perfect(infinitive, options) do
    (options
     |> Map.merge(%{:tense => "past"})
     |> ConjugateHave.conjugate)
    <> " " <> past(infinitive)
  end

  defp third_present(infinitive, plurality) do
    case plurality do
      "singular" -> Suffix.with_s(infinitive)
      "plural" -> infinitive
    end
  end

end
