defmodule Irregulars do
  @verb_forms %{
    "awake" => ["awoke", "awoken", "awaken"],
    "bear" => ["bore", "born"],
    "beat" => ["beat", "beat"],
     "become" => ["became", "become"],
     "begin" => ["began", "begun"],
     "bend" => ["bent", "bent"],
     "beset" => ["beset", "beset"],
     "bet" => ["bet", "bet"],
     "bid" => ["bid", "bid"],
     "bind" => ["bound", "bound"],
     "bite" => ["bit", "bitten"],
     "bleed" => ["bled", "bled"],
     "blow" => ["blew", "blown"],
     "break" => ["broke", "broken"],
     "breed" => ["bred", "bred"],
     "bring" => ["brought", "brought"],
     "broadcast" => ["broadcast", "broadcast"],
     "build" => ["built", "built"],
     "burn" => ["burned", "burnt"],
     "burst" => ["burst", "burst"],
     "buy" => ["bought", "bought"],
     "cast" => ["cast", "cast"],
     "catch" => ["caught", "caught"],
     "choose" => ["chose", "chosen"],
     "cling" => ["clung", "clung"],
     "come" => ["came", "come"],
     "cost" => ["cost", "cost"],
     "creep" => ["crept", "crept"],
     "cut" => ["cut", "cut"],
     "deal" => ["dealt", "dealt"],
     "dig" => ["dug", "dug"],
     "dive" => ["dove", "dived"],
     "do" => ["did", "done"],
     "draw" => ["drew", "drawn"],
     "dream" => ["dreamed", "dreamed"],
     "drive" => ["drove", "driven"],
     "drink" => ["drank", "drunk"],
     "eat" => ["ate", "eaten"],
     "fall" => ["fell", "fallen"],
     "feed" => ["fed", "fed"],
     "feel" => ["felt", "felt"],
     "fight" => ["fought", "fought"],
     "find" => ["found", "found"],
     "fit" => ["fit", "fit"],
     "flee" => ["fled", "fled"],
     "fling" => ["flung", "flung"],
     "fly" => ["flew", "flown"],
     "forbid" => ["forbade", "forbidden"],
     "forget" => ["forgot", "forgotten"],
     "forego" => ["forewent", "foregone"],
     "forgo" => ["forwent", "forgone"],
     "forgive" => ["forgave", "forgiven"],
     "forsake" => ["forsook", "forsaken"],
     "freeze" => ["froze", "frozen"],
     "get" => ["got", "gotten"],
     "give" => ["gave", "given"],
     "go" => ["went", "gone"],
     "grind" => ["ground", "ground"],
     "grow" => ["grew", "grown"],
     "hang" => ["hung", "hung"],
     "hear" => ["heard", "heard"],
     "hide" => ["hid", "hidden"],
     "hit" => ["hit", "hit"],
     "hold" => ["held", "held"],
     "hurt" => ["hurt", "hurt"],
     "keep" => ["kept", "kept"],
     "kneel" => ["knelt", "knelt"],
     "knit" => ["knit", "knit"],
     "know" => ["knew", "known"],
     "lay" => ["laid", "laid"],
     "lead" => ["led", "led"],
     "leap" => ["leaped", "leaped"],
     "learn" => ["learned", "learned"],
     "leave" => ["left", "left"],
     "lend" => ["lent", "lent"],
     "let" => ["let", "let"],
     "lie" => ["lay", "lain"],
     "light" => ["lit", "lighted"],
     "lose" => ["lost", "lost"],
     "make" => ["made", "made"],
     "mean" => ["meant", "meant"],
     "meet" => ["met", "met"],
     "misspell" => ["misspelled", "misspelled"],
     "mistake" => ["mistook", "mistaken"],
     "mow" => ["mowed", "mown"],
     "overcome" => ["overcame", "overcome"],
     "overdo" => ["overdid", "overdone"],
     "overtake" => ["overtook", "overtaken"],
     "overthrow" => ["overthrew", "overthrown"],
     "pay" => ["paid", "paid"],
     "plead" => ["pled", "pled"],
     "prove" => ["proved", "proved"],
     "put" => ["put", "put"],
     "quit" => ["quit", "quit"],
     "read" => ["read", "read"],
     "reset" => ["reset", "reset"],
     "rid" => ["rid", "rid"],
     "ride" => ["rode", "ridden"],
     "ring" => ["rang", "rung"],
     "rise" => ["rose", "risen"],
     "run" => ["ran", "run"],
     "saw" => ["sawed", "sawn"],
     "say" => ["said", "said"],
     "see" => ["saw", "seen"],
     "seek" => ["sought", "sought"],
     "sell" => ["sold", "sold"],
     "send" => ["sent", "sent"],
     "set" => ["set", "set"],
     "sew" => ["sewed", "sewed"],
     "shake" => ["shook", "shaken"],
     "shave" => ["shaved", "shaved"],
     "shear" => ["shore", "shorn"],
     "shed" => ["shed", "shed"],
     "shine" => ["shone", "shone"],
     "shoe" => ["shoed", "shoed"],
     "shoot" => ["shot", "shot"],
     "show" => ["showed", "showed"],
     "shrink" => ["shrank", "shrunk"],
     "shut" => ["shut", "shut"],
     "sing" => ["sang", "sung"],
     "sink" => ["sank", "sunk"],
     "sit" => ["sat", "sat"],
     "sleep" => ["slept", "slept"],
     "slay" => ["slew", "slain"],
     "slide" => ["slid", "slid"],
     "sling" => ["slung", "slung"],
     "slit" => ["slit", "slit"],
     "smite" => ["smote", "smitten"],
     "sow" => ["sowed", "sowed"],
     "speak" => ["spoke", "spoken"],
     "speed" => ["sped", "sped"],
     "spend" => ["spent", "spent"],
     "spill" => ["spilled", "spilled"],
     "spin" => ["spun", "spun"],
     "spit" => ["spat", "spit"],
     "split" => ["split", "split"],
     "spread" => ["spread", "spread"],
     "spring" => ["sprang", "sprung"],
     "stand" => ["stood", "stood"],
     "steal" => ["stole", "stolen"],
     "stick" => ["stuck", "stuck"],
     "sting" => ["stung", "stung"],
     "stink" => ["stank", "stunk"],
     "stride" => ["strode", "stridden"],
     "strike" => ["struck", "stricken"],
     "string" => ["strung", "strung"],
     "strive" => ["strove", "striven"],
     "swear" => ["swore", "sworn"],
     "sweep" => ["swept", "swept"],
     "swell" => ["swelled", "swelled"],
     "swim" => ["swam", "swum"],
     "swing" => ["swung", "swung"],
     "take" => ["took", "taken"],
     "teach" => ["taught", "taught"],
     "tear" => ["tore", "torn"],
     "tell" => ["told", "told"],
     "think" => ["thought", "thought"],
     "thrive" => ["thrived", "thrived"],
     "throw" => ["threw", "thrown"],
     "thrust" => ["thrust", "thrust"],
     "tread" => ["trod", "trodden"],
     "understand" => ["understood", "understood"],
     "uphold" => ["upheld", "upheld"],
     "upset" => ["upset", "upset"],
     "wake" => ["woke", "woken"],
     "wear" => ["wore", "worn"],
     "weave" => ["wove", "woven"],
     "wed" => ["wed", "wed"],
     "weep" => ["wept", "wept"],
     "wind" => ["wound", "wound"],
     "win" => ["won", "won"],
     "withhold" => ["withheld", "withheld"],
     "withstand" => ["withstood", "withstood"],
     "wring" => ["wrung", "wrung"],
     "write" => ["wrote", "written"] }
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

    def verb_forms do @verb_forms end
end
