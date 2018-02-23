defmodule ConjugateIrregular do
  require Irregulars

  def is_irregular?(infinitive) do Map.has_key?(Irregulars.verb_forms, infinitive) end

  def conjugate(infinitive, options) do
    case options[:tense] do
      "past" -> fetch_past(infinitive)
      "present" -> conjugate_present(infinitive, options)
      "future" -> "will " <> infinitive
    end
  end

  def conjugate_present(infinitive, options) do
    case options[:person] do
      "third" -> third_present(infinitive, options[:plurality])
      _ -> infinitive
    end
  end


  defp third_present(infinitive, plurality) do
    case plurality do
      "singular" -> infinitive <> "s"
      "plural" -> infinitive
    end
  end

  def fetch_past(infinitive) do
    {:ok, past} =
      Map.get(Irregulars.verb_forms, infinitive)
      |> Enum.fetch(0)
    past
  end
end
