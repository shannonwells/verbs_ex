defmodule ConjugateBe do
  require ConjugateHave

  def conjugate(options) do
    case options[:tense] do
      :present -> present(options)
      :past -> past(options)
      :past_perfect -> past_perfect(options)
      :past_progressive -> past_progressive(options)
      :future -> future(options)
    end
  end

  defp present(options) do
    case options[:plurality] do
      :singular -> present_singular(options[:person])
      _ -> "are"
    end
  end

  defp past(options) do
    case options[:plurality] do
      :singular -> past_singular(options[:person])
      _ -> "were"
    end
  end

  defp past_perfect(options) do
    (options
    |> Map.merge(%{:tense => :past})
    |> ConjugateHave.conjugate)
    <> " been"
  end

  defp past_progressive(options) do
    (options
     |> Map.merge(%{:tense => :past})
     |> ConjugateBe.conjugate)
    <> " being"

  end

  defp future(_) do "will be" end

  defp present_singular(person) do
    case person do
      :first -> "am"
      :second -> "are"
      _ -> "is"
    end
  end

  defp past_singular(person) do
    case person do
      :second -> "were"
      _ -> "was"
    end
  end
end
