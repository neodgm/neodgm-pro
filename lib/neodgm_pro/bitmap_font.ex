defmodule NeoDGMPro.BitmapFont do
  @spec get_sources() :: [module()]
  def get_sources do
    [
      base_glyph_sources(),
      pro_glyph_sources()
    ]
    |> List.flatten()
  end

  defp base_glyph_sources do
    [
      BlockElements,
      BoxDrawing,
      BraillePatterns,
      Dingbats,
      EnclosedAlphanumerics,
      EnclosedCJKLetters,
      GeometricShapes,
      HalfwidthAndFullwidthForms,
      HangulCompatibilityJamo,
      HangulJamo,
      HangulJamoSource,
      HangulSyllables,
      NumberForms,
      Trigrams,
      Components.Diacritics,
      Components.Enclosed,
      Components.Fractions
    ]
    |> Enum.map(&Module.concat(NeoDGM.BitmapFont, &1))
  end

  defp pro_glyph_sources do
    [
      BasicLatin,
      GeneralPunctuation,
      Latin1Supplement,
      SuperscriptsAndSubscripts,
      AlphabeticPresentationForms,
      Components.ShortCapitals
    ]
    |> Enum.map(&Module.concat(__MODULE__, &1))
  end
end
