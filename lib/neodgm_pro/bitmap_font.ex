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
      NotDef,
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
      Trigrams,
      VariationSelectors,
      Components.Diacritics,
      Components.Enclosed
    ]
    |> Enum.map(&Module.concat(NeoDGM.BitmapFont, &1))
  end

  defp pro_glyph_sources do
    [
      BasicLatin,
      GeneralPunctuation,
      Latin1Supplement,
      SuperscriptsAndSubscripts,
      NumberForms,
      CJKSymbols,
      AlphabeticPresentationForms,
      Components.Fractions,
      Components.ShortCapitals
    ]
    |> Enum.map(&Module.concat(__MODULE__, &1))
  end
end
