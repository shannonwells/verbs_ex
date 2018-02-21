defmodule Verbs do
  require ConjugateBe
  require ConjugateHave
  @doc """
    Example:
    Verb.conjugate("play",
      :tense => "past", :person => "1", :plurality => "singular")
      "play"
  """
  @irregular_verbs  ["awake","drink", "grind", "write"]

  def conjugate(infinitive, options) when infinitive in @irregular_verbs do
    ConjugateIrregular.conjugate(infinitive, options)
  end

  def conjugate("have", options) do ConjugateHave.conjugate(options) end
  def conjugate("be", options) do ConjugateBe.conjugate(options) end
  def conjugate(infinitive, options) do
    infinitive <> "s"
  end

end
