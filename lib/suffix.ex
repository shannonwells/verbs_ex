defmodule Suffix do

  @moduledoc """
    `with_xxxx` functions add the specified suffix to the infinitive based on
    rules (often determined by the Boolean-returning functions)

    The others are self-explanatory.

    ```
    iex> Suffix.with_ed("work")
    "worked"

    iex> Suffix.ends_aiou?("foo")
    true
    ```
  """

  @consonant_pattern "[bcdfghjklmnpqrstvwxz]"
  @doubled_consonant_pattern "[bcdfghklmnprstz]"
  @vowel_pattern "[aeiouy]"
  @doubled_vowel_pattern "[aeiouy]"

  def with_ed(infinitive) do
    cond do
      ends_consonant_plus_e?(infinitive) -> infinitive <> "d"
      ends_consonant_plus_y?(infinitive) ->
        String.replace_suffix(infinitive, "y", "ied")
      ends_vowel_lf?(infinitive) ->
        String.replace_suffix(infinitive, "lf", "lved")
      ends_consonant_vowel_consonant?(infinitive) ->
        infinitive <> String.last(infinitive) <> "ed"
      true -> infinitive <> "ed"
    end
  end

  def with_ing(infinitive) do
    cond do
      ends_ie?(infinitive) -> String.replace_suffix(infinitive, "ie", "ying")
      ends_e_not_ie?(infinitive) -> String.replace_suffix(infinitive, "e", "ing")
      ends_vowel_lf?(infinitive) -> String.replace_suffix(infinitive, "lf", "lving")
      ends_consonant_vowel_consonant?(infinitive) ->
        infinitive <> String.last(infinitive) <> "ing"
      true -> infinitive <> "ing"
    end
  end

  def with_s(infinitive) do
    cond do
      Regex.match?(~r/ch$/i, infinitive) -> infinitive <> "es"
      ends_consonant_plus_e?(infinitive) -> infinitive <> "s"
      ends_consonant_plus_y?(infinitive) -> String.replace_suffix(infinitive, "y", "ies")
      ends_vowel_lf?(infinitive) -> String.replace_suffix(infinitive, "lf", "lves")
      ends_aiou?(infinitive) -> infinitive <> "es"
      true -> infinitive <> "s"
    end
  end

  def ends_aiou?(infinitive) do
    Regex.match?(~r/[aiou]$/i, infinitive)
  end

  def ends_consonant_vowel_consonant?(infinitive) do
    pattern = @consonant_pattern <>
              @doubled_vowel_pattern <>
              @doubled_consonant_pattern  <> "$"
    {:ok, regex} = Regex.compile(pattern, "i")
    Regex.match?(regex, infinitive)
  end

  def ends_consonant_plus_y?(infinitive) do
    {:ok, regex} = Regex.compile(@consonant_pattern <> "y$", "i")
    Regex.match?(regex, infinitive)
  end

  def ends_consonant_plus_e?(infinitive) do
    {:ok, regex} = Regex.compile(@consonant_pattern <> "e$","i")
    Regex.match?(regex, infinitive)
  end

  def ends_ie?(infinitive) do
    Regex.match?(~r/ie$/i, infinitive)
  end

  def ends_e_not_ie?(infinitive) do
    Regex.match?(~r/[^i]e$/i, infinitive)
  end

  def ends_vowel_lf?(infinitive) do
    {:ok, regex} = Regex.compile(@vowel_pattern <> "lf$")
    Regex.match?(regex, infinitive)
  end

  # conjugate.single_terminal_consonant "abandon"
  # conjugate.single_terminal_consonant "accouter"
  # conjugate.single_terminal_consonant "accredit"
  # conjugate.single_terminal_consonant "adhibit"
  # conjugate.single_terminal_consonant "administer"
  # conjugate.single_terminal_consonant "alter"
  # conjugate.single_terminal_consonant "anchor"
  # conjugate.single_terminal_consonant "answer"
  # conjugate.single_terminal_consonant "attrit"
  # conjugate.single_terminal_consonant "audit"
  # conjugate.single_terminal_consonant "author"
  # conjugate.single_terminal_consonant "ballot"
  # conjugate.single_terminal_consonant "banner"
  # conjugate.single_terminal_consonant "batten"
  # conjugate.single_terminal_consonant "bedizen"
  # conjugate.single_terminal_consonant "bespatter"
  # conjugate.single_terminal_consonant "betoken"
  # conjugate.single_terminal_consonant "bewilder"
  # conjugate.single_terminal_consonant "billet"
  # conjugate.single_terminal_consonant "blacken"
  # conjugate.single_terminal_consonant "blither"
  # conjugate.single_terminal_consonant "blossom"
  # conjugate.single_terminal_consonant "bother"
  # conjugate.single_terminal_consonant "brighten"
  # conjugate.single_terminal_consonant "broaden"
  # conjugate.single_terminal_consonant "broider"
  # conjugate.single_terminal_consonant "burden"
  # conjugate.single_terminal_consonant "caparison"
  # conjugate.single_terminal_consonant "catalog"
  # conjugate.single_terminal_consonant "censor"
  # conjugate.single_terminal_consonant "center"
  # conjugate.single_terminal_consonant "charter"
  # conjugate.single_terminal_consonant "chatter"
  # conjugate.single_terminal_consonant "cheapen"
  # conjugate.single_terminal_consonant "chipper"
  # conjugate.single_terminal_consonant "chirrup"
  # conjugate.single_terminal_consonant "christen"
  # conjugate.single_terminal_consonant "clobber"
  # conjugate.single_terminal_consonant "cluster"
  # conjugate.single_terminal_consonant "coarsen"
  # conjugate.single_terminal_consonant "cocker"
  # conjugate.single_terminal_consonant "coedit"
  # conjugate.single_terminal_consonant "cohabit"
  # conjugate.single_terminal_consonant "color"
  # conjugate.single_terminal_consonant "concenter"
  # conjugate.single_terminal_consonant "corner"
  # conjugate.single_terminal_consonant "cover"
  # conjugate.single_terminal_consonant "covet"
  # conjugate.single_terminal_consonant "cower"
  # conjugate.single_terminal_consonant "credit"
  # conjugate.single_terminal_consonant "custom"
  # conjugate.single_terminal_consonant "dampen"
  # conjugate.single_terminal_consonant "deafen"
  # conjugate.single_terminal_consonant "decipher"
  # conjugate.single_terminal_consonant "deflower"
  # conjugate.single_terminal_consonant "delimit"
  # conjugate.single_terminal_consonant "deposit"
  # conjugate.single_terminal_consonant "develop"
  # conjugate.single_terminal_consonant "differ"
  # conjugate.single_terminal_consonant "disaccustom"
  # conjugate.single_terminal_consonant "discover"
  # conjugate.single_terminal_consonant "discredit"
  # conjugate.single_terminal_consonant "disencumber"
  # conjugate.single_terminal_consonant "dishearten"
  # conjugate.single_terminal_consonant "disinherit"
  # conjugate.single_terminal_consonant "dismember"
  # conjugate.single_terminal_consonant "dispirit"
  # conjugate.single_terminal_consonant "dither"
  # conjugate.single_terminal_consonant "dizen"
  # conjugate.single_terminal_consonant "dodder"
  # conjugate.single_terminal_consonant "edit"
  # conjugate.single_terminal_consonant "elicit"
  # conjugate.single_terminal_consonant "embitter"
  # conjugate.single_terminal_consonant "embolden"
  # conjugate.single_terminal_consonant "embosom"
  # conjugate.single_terminal_consonant "embower"
  # conjugate.single_terminal_consonant "empoison"
  # conjugate.single_terminal_consonant "empower"
  # conjugate.single_terminal_consonant "enamor"
  # conjugate.single_terminal_consonant "encipher"
  # conjugate.single_terminal_consonant "encounter"
  # conjugate.single_terminal_consonant "endanger"
  # conjugate.single_terminal_consonant "enfetter"
  # conjugate.single_terminal_consonant "engender"
  # conjugate.single_terminal_consonant "enlighten"
  # conjugate.single_terminal_consonant "enter"
  # conjugate.single_terminal_consonant "envelop"
  # conjugate.single_terminal_consonant "envenom"
  # conjugate.single_terminal_consonant "environ"
  # conjugate.single_terminal_consonant "exhibit"
  # conjugate.single_terminal_consonant "exit"
  # conjugate.single_terminal_consonant "fasten"
  # conjugate.single_terminal_consonant "fatten"
  # conjugate.single_terminal_consonant "feather"
  # conjugate.single_terminal_consonant "fester"
  # conjugate.single_terminal_consonant "filter"
  # conjugate.single_terminal_consonant "flatten"
  # conjugate.single_terminal_consonant "flatter"
  # conjugate.single_terminal_consonant "flounder"
  # conjugate.single_terminal_consonant "fluster"
  # conjugate.single_terminal_consonant "flutter"
  # conjugate.single_terminal_consonant "follow"
  # conjugate.single_terminal_consonant "foreshorten"
  # conjugate.single_terminal_consonant "founder"
  # conjugate.single_terminal_consonant "fritter"
  # conjugate.single_terminal_consonant "gammon"
  # conjugate.single_terminal_consonant "gather"
  # conjugate.single_terminal_consonant "gladden"
  # conjugate.single_terminal_consonant "glimmer"
  # conjugate.single_terminal_consonant "glisten"
  # conjugate.single_terminal_consonant "glower"
  # conjugate.single_terminal_consonant "greaten"
  # conjugate.single_terminal_consonant "hamper"
  # conjugate.single_terminal_consonant "hanker"
  # conjugate.single_terminal_consonant "happen"
  # conjugate.single_terminal_consonant "harden"
  # conjugate.single_terminal_consonant "harken"
  # conjugate.single_terminal_consonant "hasten"
  # conjugate.single_terminal_consonant "hearten"
  # conjugate.single_terminal_consonant "hoarsen"
  # conjugate.single_terminal_consonant "honor"
  # conjugate.single_terminal_consonant "imprison"
  # conjugate.single_terminal_consonant "inhabit"
  # conjugate.single_terminal_consonant "inhibit"
  # conjugate.single_terminal_consonant "inspirit"
  # conjugate.single_terminal_consonant "interpret"
  # conjugate.single_terminal_consonant "iron"
  # conjugate.single_terminal_consonant "know"
  # conjugate.single_terminal_consonant "laten"
  # conjugate.single_terminal_consonant "launder"
  # conjugate.single_terminal_consonant "lengthen"
  # conjugate.single_terminal_consonant "liken"
  # conjugate.single_terminal_consonant "limber"
  # conjugate.single_terminal_consonant "limit"
  # conjugate.single_terminal_consonant "linger"
  # conjugate.single_terminal_consonant "litter"
  # conjugate.single_terminal_consonant "liven"
  # conjugate.single_terminal_consonant "loiter"
  # conjugate.single_terminal_consonant "lollop"
  # conjugate.single_terminal_consonant "louden"
  # conjugate.single_terminal_consonant "lower"
  # conjugate.single_terminal_consonant "lumber"
  # conjugate.single_terminal_consonant "madden"
  # conjugate.single_terminal_consonant "malinger"
  # conjugate.single_terminal_consonant "market"
  # conjugate.single_terminal_consonant "matter"
  # conjugate.single_terminal_consonant "misinterpret"
  # conjugate.single_terminal_consonant "misremember"
  # conjugate.single_terminal_consonant "monitor"
  # conjugate.single_terminal_consonant "moulder"
  # conjugate.single_terminal_consonant "murder"
  # conjugate.single_terminal_consonant "murmur"
  # conjugate.single_terminal_consonant "muster"
  # conjugate.single_terminal_consonant "number"
  # conjugate.single_terminal_consonant "offer"
  # conjugate.single_terminal_consonant "open"
  # conjugate.single_terminal_consonant "order"
  # conjugate.single_terminal_consonant "outmaneuver"
  # conjugate.single_terminal_consonant "overmaster"
  # conjugate.single_terminal_consonant "pamper"
  # conjugate.single_terminal_consonant "pilot"
  # conjugate.single_terminal_consonant "pivot"
  # conjugate.single_terminal_consonant "plaster"
  # conjugate.single_terminal_consonant "plunder"
  # conjugate.single_terminal_consonant "powder"
  # conjugate.single_terminal_consonant "power"
  # conjugate.single_terminal_consonant "prohibit"
  # conjugate.single_terminal_consonant "reckon"
  # conjugate.single_terminal_consonant "reconsider"
  # conjugate.single_terminal_consonant "recover"
  # conjugate.single_terminal_consonant "redden"
  # conjugate.single_terminal_consonant "redeliver"
  # conjugate.single_terminal_consonant "register"
  # conjugate.single_terminal_consonant "rejigger"
  # conjugate.single_terminal_consonant "remember"
  # conjugate.single_terminal_consonant "renumber"
  # conjugate.single_terminal_consonant "reopen"
  # conjugate.single_terminal_consonant "reposit"
  # conjugate.single_terminal_consonant "rewaken"
  # conjugate.single_terminal_consonant "richen"
  # conjugate.single_terminal_consonant "roister"
  # conjugate.single_terminal_consonant "roughen"
  # conjugate.single_terminal_consonant "sadden"
  # conjugate.single_terminal_consonant "savor"
  # conjugate.single_terminal_consonant "scatter"
  # conjugate.single_terminal_consonant "scupper"
  # conjugate.single_terminal_consonant "sharpen"
  # conjugate.single_terminal_consonant "shatter"
  # conjugate.single_terminal_consonant "shelter"
  # conjugate.single_terminal_consonant "shimmer"
  # conjugate.single_terminal_consonant "shiver"
  # conjugate.single_terminal_consonant "shorten"
  # conjugate.single_terminal_consonant "shower"
  # conjugate.single_terminal_consonant "sicken"
  # conjugate.single_terminal_consonant "smolder"
  # conjugate.single_terminal_consonant "smoothen"
  # conjugate.single_terminal_consonant "soften"
  # conjugate.single_terminal_consonant "solicit"
  # conjugate.single_terminal_consonant "squander"
  #                                     "spatter"
  # conjugate.single_terminal_consonant "stagger"
  # conjugate.single_terminal_consonant "stiffen"
  # conjugate.single_terminal_consonant "stopper"
  # conjugate.single_terminal_consonant "stouten"
  # conjugate.single_terminal_consonant "straiten"
  # conjugate.single_terminal_consonant "strengthen"
  # conjugate.single_terminal_consonant "stutter"
  # conjugate.single_terminal_consonant "suffer"
  # conjugate.single_terminal_consonant "sugar"
  # conjugate.single_terminal_consonant "summon"
  # conjugate.single_terminal_consonant "surrender"
  # conjugate.single_terminal_consonant "swelter"
  # conjugate.single_terminal_consonant "sypher"
  # conjugate.single_terminal_consonant "tamper"
  # conjugate.single_terminal_consonant "tauten"
  # conjugate.single_terminal_consonant "tender"
  # conjugate.single_terminal_consonant "thicken"
  # conjugate.single_terminal_consonant "threaten"
  # conjugate.single_terminal_consonant "thunder"
  # conjugate.single_terminal_consonant "totter"
  # conjugate.single_terminal_consonant "toughen"
  # conjugate.single_terminal_consonant "tower"
  # conjugate.single_terminal_consonant "transit"
  # conjugate.single_terminal_consonant "trigger"
  # conjugate.single_terminal_consonant "tucker"
  # conjugate.single_terminal_consonant "unburden"
  # conjugate.single_terminal_consonant "uncover"
  # conjugate.single_terminal_consonant "unfetter"
  # conjugate.single_terminal_consonant "unloosen"
  # conjugate.single_terminal_consonant "upholster"
  # conjugate.single_terminal_consonant "utter"
  # conjugate.single_terminal_consonant "visit"
  # conjugate.single_terminal_consonant "vomit"
  # conjugate.single_terminal_consonant "wander"
  # conjugate.single_terminal_consonant "water"
  # conjugate.single_terminal_consonant "weaken"
  # conjugate.single_terminal_consonant "whiten"
  # conjugate.single_terminal_consonant "winter"
  # conjugate.single_terminal_consonant "wonder"
  # conjugate.single_terminal_consonant "worsen"

end
