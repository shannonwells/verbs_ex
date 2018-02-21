defmodule ConjugateBe do

  def conjugate(options) do
    case options[:tense] do
      "present" -> present(options)
      "past" -> past(options)
      "future" -> future(options)
    end
  end

  defp present(options) do
    case options[:plurality] do
      "singular" -> present_singular(options[:person])
      _ -> "are"
    end
  end

  defp past(options) do
    case options[:plurality] do
      "singular" -> past_singular(options[:person])
      _ -> "were"
    end
  end

  defp future(_) do
    "will be"
  end

  defp present_singular("first") do "am" end
  defp present_singular("second") do "are" end
  defp present_singular("third") do "is" end

  # I was, you were, it was
  defp past_singular("second") do "were" end
  defp past_singular(_) do "was" end
end
