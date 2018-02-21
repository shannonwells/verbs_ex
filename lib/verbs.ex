defmodule Verbs do
  require ConjugateBe
  @doc """
    Example:
    Verb.conjugate("play",
      :tense => "past", :person => "1", :plurality => "singular")
      "play"
  """
  @irregular_verbs  ["awake","drink", "grind", "write"]

  def conjugate(infinitive, options) when infinitive in @irregular_verbs do
    conjugate_irregular(infinitive, options)
  end

  def conjugate("have", options) do conjugate_have(options) end
  def conjugate("be", options) do ConjugateBe.conjugate(options) end
  def conjugate(infinitive, options) do
    infinitive <> "s"
  end

  defp conjugate_have(options) do
    "has"
  end

  defp conjugate_be(options) do
    "are"
  end

  defp conjugate_irregular(infinitive,options) do
    infinitive <> "s"
  end


end
