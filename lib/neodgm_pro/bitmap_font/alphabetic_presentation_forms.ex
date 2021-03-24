use PixelFont.GlyphSource

glyph_source NeoDGMPro.BitmapFont.AlphabeticPresentationForms do
  composite_glyph 0xFB00 do
    component ?f, 0, 0
    component ?f, 5, 0
  end

  composite_glyph 0xFB01 do
    component "f.liga", 0, 0
    component 0x0131, 5, 0
  end

  composite_glyph 0xFB02 do
    component ?f, 0, 0
    component "l.liga", 5, 0
  end

  composite_glyph 0xFB03 do
    component ?f, 0, 0
    component "f.liga", 5, 0
    component 0x0131, 10, 0
  end

  composite_glyph 0xFB04 do
    component ?f, 0, 0
    component ?f, 5, 0
    component "l.liga", 10, 0
  end

  bmp_glyph "f.liga" do
    advance 8
    bounds 0..8, 0..10

    data """
    00111110
    01100011
    01100000
    11111000
    01100000
    01100000
    01100000
    01100000
    01100000
    01100000
    """
  end

  bmp_glyph "l.liga" do
    advance 5
    bounds 0..4, 0..10

    data """
    1100
    0110
    0110
    0110
    0110
    0110
    0110
    0110
    0110
    0011
    """
  end
end
