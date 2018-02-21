defmodule ConjugateHave do

  def conjugate(options) do
    case options[:tense] do
      "present" -> present(options)
      "past" -> past(options)
      "future" -> future(options)
    end
  end

  defp present(options) do
    case options[:person] do
      "third" -> present_third(options[:plurality])
      _ -> "have"
    end
  end

  defp past(_) do "had"  end

  defp future(options) do
    case options[:person] do
      "first" -> "shall have"
      _ -> "will have"
    end
  end

  defp present_third("singular") do "has" end
  defp present_third("plural") do "have" end
end
