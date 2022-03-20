use PixelFont.OTFLayout

lookups NeoDGMPro.Lookups.GSUB.StylisticVariants, for: "GSUB" do
  module do
    defp scripts, do: %{"DFLT" => [:default], "latn" => [:default]}
  end

  lookup :single_substitution, "Alternative forms of digits" do
    feature "ss01", scripts()

    substitutions do
      substitute ?0, "zero.cv01.4"
      substitute ?2, "two.cv02.1"
      substitute ?3, "three.cv03.1"
      substitute ?4, "four.cv04.1"
      substitute ?5, "five.cv05.1"
      substitute ?6, "six.cv06.1"
      substitute ?7, "seven.cv07.1"
      substitute ?9, "nine.cv08.1"
    end
  end

  lookup :alternate, "Alternative forms of digit zero" do
    feature "cv01", scripts()

    substitutions do
      substitute 0, [
        "zero.cv01.1",
        "zero.cv01.2",
        "zero.cv01.3",
        "zero.cv01.4",
        "zero.cv01.5",
        "zero.cv01.6",
        "zero.cv01.7"
      ]

      substitute "zero.cv01.4", [
        "zero.cv01.5",
        "zero.cv01.6",
        "zero.cv01.7",
        ?0,
        "zero.cv01.1",
        "zero.cv01.2",
        "zero.cv01.3"
      ]
    end
  end

  [
    {"two", ?2, "cv02"},
    {"three", ?3, "cv03"},
    {"four", ?4, "cv04"},
    {"five", ?5, "cv05"},
    {"six", ?6, "cv06"},
    {"seven", ?7, "cv07"},
    {"nine", ?9, "cv08"}
  ]
  |> Enum.map(fn {digit_name, glyph_id, feature_tag} ->
    lookup :single_substitution, "Alternative forms of digit #{digit_name}" do
      feature feature_tag, scripts()

      substitutions do
        substitute glyph_id, "#{digit_name}.#{feature_tag}.1"
      end
    end
  end)
end
