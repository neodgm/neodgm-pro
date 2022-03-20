use PixelFont.GlyphSource

glyph_source NeoDGMPro.BitmapFont.Components.ShortCapitals do
  based_on NeoDGM.BitmapFont.Components.ShortCapitals

  bmp_glyph "I.short" do
    advance 5
    bounds 0..4, 0..9

    data """
    1111
    0110
    0110
    0110
    0110
    0110
    0110
    0110
    1111
    """
  end
end
