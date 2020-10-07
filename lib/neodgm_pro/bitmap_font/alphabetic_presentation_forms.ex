use PixelFont.GlyphSource

glyph_source NeoDGMPro.BitmapFont.AlphabeticPresentationForms do
  composite_glyph unicode: 0xFB00 do
    component {:unicode, ?f}, 0, 0
    component {:unicode, ?f}, 5, 0
  end

  composite_glyph unicode: 0xFB01 do
    component {:name, "f.liga"}, 0, 0
    component {:unicode, 0x0131}, 5, 0
  end

  composite_glyph unicode: 0xFB02 do
    component {:unicode, ?f}, 0, 0
    component {:name, "l.liga"}, 5, 0
  end

  composite_glyph unicode: 0xFB03 do
    component {:unicode, ?f}, 0, 0
    component {:name, "f.liga"}, 5, 0
    component {:unicode, 0x0131}, 10, 0
  end

  composite_glyph unicode: 0xFB04 do
    component {:unicode, ?f}, 0, 0
    component {:unicode, ?f}, 5, 0
    component {:name, "l.liga"}, 10, 0
  end

  bmp_glyph name: "f.liga" do
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

  bmp_glyph name: "l.liga" do
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
