defmodule Verbs do
#  require ConjugateBe
#  require ConjugateHave
#  require ConjugateRegular
#  require ConjugateIrregular
ConjugateIrregular
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
      ConjugateRegular.conjugate(infinitive, options)
    end

  end

end
