use PixelFont.OTFLayout

lookups NeoDGMPro.Lookups.GSUB.Fractions, for: "GSUB" do
  module do
    @digits ~w(zero one two three four five six seven eight nine)

    def scripts do
      %{
        "DFLT" => [:default],
        "latn" => [:default],
        "hang" => [:default],
        "jamo" => [:default]
      }
    end

    def numr_figures, do: Enum.map(@digits, &(&1 <> ".numr"))
    def dnom_figures, do: Enum.map(@digits, &(&1 <> ".dnom"))
  end

  lookup :single_substitution, "Fraction slash" do
    substitutions(do: substitute(?/, 0x2044))
  end

  lookup :single_substitution, "Denominator figures" do
    substitutions do
      substitute ?0, "zero.dnom"
      substitute ?1, "one.dnom"
      substitute ?2, "two.dnom"
      substitute ?3, "three.dnom"
      substitute ?4, "four.dnom"
      substitute ?5, "five.dnom"
      substitute ?6, "six.dnom"
      substitute ?7, "seven.dnom"
      substitute ?8, "eight.dnom"
      substitute ?9, "nine.dnom"
    end
  end

  lookup :reverse_chaining_context, "Numerator chain" do
    feature "frac", scripts()

    context do
      lookahead '/'
      lookahead '0123456789'
      substitute ?0, "zero.numr"
      substitute ?1, "one.numr"
      substitute ?2, "two.numr"
      substitute ?3, "three.numr"
      substitute ?4, "four.numr"
      substitute ?5, "five.numr"
      substitute ?6, "six.numr"
      substitute ?7, "seven.numr"
      substitute ?8, "eight.numr"
      substitute ?9, "nine.numr"
    end

    context do
      lookahead ',.'
      lookahead numr_figures()
      substitute ?0, "zero.numr"
      substitute ?1, "one.numr"
      substitute ?2, "two.numr"
      substitute ?3, "three.numr"
      substitute ?4, "four.numr"
      substitute ?5, "five.numr"
      substitute ?6, "six.numr"
      substitute ?7, "seven.numr"
      substitute ?8, "eight.numr"
      substitute ?9, "nine.numr"
    end

    context do
      lookahead numr_figures()
      substitute ?0, "zero.numr"
      substitute ?1, "one.numr"
      substitute ?2, "two.numr"
      substitute ?3, "three.numr"
      substitute ?4, "four.numr"
      substitute ?5, "five.numr"
      substitute ?6, "six.numr"
      substitute ?7, "seven.numr"
      substitute ?8, "eight.numr"
      substitute ?9, "nine.numr"
    end
  end

  lookup :chained_context, "Fraction slash chain" do
    feature "frac", scripts()

    context do
      backtrack numr_figures()
      input '/', apply: "Fraction slash"
      lookahead '0123456789'
    end
  end

  lookup :chained_context, "Denominator chain" do
    feature "frac", scripts()

    context do
      backtrack [0x2044]
      input '0123456789', apply: "Denominator figures"
    end

    context do
      backtrack ',.'
      backtrack dnom_figures()
      input '0123456789', apply: "Denominator figures"
    end

    context do
      backtrack dnom_figures()
      input '0123456789', apply: "Denominator figures"
    end
  end
end
