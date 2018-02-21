defmodule ConjugateBe do

  def conjugate(options) do
    case options[:tense] do
      "present" -> present(options)
      "past" -> past(options)
      "future" -> future(options)
    end
  end

  defp present(options) do
    case options[:person] do
      "first" -> present_first(options[:plurality])
      "third" -> present_third(options[:plurality])
      _ -> "are"
    end
  end

  defp past(options) do
    case options[:person] do
      "first" -> past_first(options[:plurality])
      _ -> "were"
    end
  end

  defp future(_) do
    "will be"
  end

  defp present_third("singular") do "is" end
  defp present_third("plural") do "are" end

  defp present_first("singular") do "am" end
  defp present_first("plural") do "are" end

  defp past_first("singular") do "was" end
  defp past_first("plural") do "were" end
end
