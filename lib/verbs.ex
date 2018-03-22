defmodule Verbs do
#  require ConjugateBe
#  require ConjugateHave
#  require ConjugateRegular
#  require ConjugateIrregular
ConjugateIrregular
  @moduledoc """
    Conjugate English verbs. Includes conjugation for 'be', 'have', and a large number of
    irregular verbs.  See `Irregulars.verb_forms` for a complete list.
  """

  @doc """
    ```
    iex> Verb.conjugate("play",
      :tense => :past, :person => :first, :plurality => :singular)
      "play"
    ```
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
