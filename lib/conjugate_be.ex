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

  defp future(_) do "will be" end

  defp present_singular(person) do
    case person do
      "first" -> "am"
      "second" -> "are"
      _ -> "is"
    end
  end

  defp past_singular(person) do
    case person do
      "second" -> "were"
      _ -> "was"
    end
  end
end
