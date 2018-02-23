defmodule Verbs do
  require ConjugateBe
  require ConjugateHave
  @doc """
    Example:
    Verb.conjugate("play",
      :tense => "past", :person => "1", :plurality => "singular")
      "play"
  """

  def conjugate("have", options) do ConjugateHave.conjugate(options) end
  def conjugate("be", options) do ConjugateBe.conjugate(options) end

  def conjugate(infinitive, options) do
    if (ConjugateIrregular.is_irregular?(infinitive)) do
      ConjugateIrregular.conjugate(infinitive, options)
    else
      infinitive <> "s"
    end

  end

end
