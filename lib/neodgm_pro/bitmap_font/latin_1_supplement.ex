use PixelFont.GlyphSource

glyph_source NeoDGMPro.BitmapFont.Latin1Supplement,
  based_on: NeoDGM.BitmapFont.Latin1Supplement do
  bmp_glyph 0xA0 do
    advance 5
    bounds 0..0, 0..0
    data ""
  end

  bmp_glyph 0xA1 do
    advance 5
    bounds 1..3, -3..7

    data """
    11
    11
    00
    11
    11
    11
    11
    11
    11
    11
    """
  end

  bmp_glyph 0xA6 do
    advance 5
    bounds 1..3, -1..11

    data """
    11
    11
    11
    11
    11
    00
    00
    11
    11
    11
    11
    11
    """
  end

  bmp_glyph 0xA9 do
    advance 13
    bounds 0..12, -1..10

    data """
    001111111100
    011000000110
    110011110011
    110110011011
    110110000011
    110110000011
    110110000011
    110110011011
    110011110011
    011000000110
    001111111100
    """
  end

  bmp_glyph 0xAA do
    advance 7
    bounds 0..6, 4..10

    data """
    011110
    110110
    110110
    011111
    000000
    111111
    """
  end

  bmp_glyph 0xAE do
    advance 13
    bounds 0..12, -1..10

    data """
    001111111100
    011000000110
    110111110011
    110110011011
    110110011011
    110111110011
    110110011011
    110110011011
    110110011011
    011000000110
    001111111100
    """
  end

  bmp_glyph 0xB0 do
    advance 6
    bounds 1..5, 7..11

    data """
    0110
    1001
    1001
    0110
    """
  end

  bmp_glyph 0xB1 do
    advance 7
    bounds 0..6, 0..7

    data """
    001100
    001100
    111111
    001100
    001100
    000000
    111111
    """
  end

  bmp_glyph 0xB2 do
    advance 6
    bounds 0..5, 4..11

    data """
    11110
    00011
    00011
    01110
    11000
    11000
    11111
    """
  end

  bmp_glyph 0xB3 do
    advance 6
    bounds 0..5, 4..11

    data """
    11110
    00011
    00011
    01110
    00011
    00011
    11110
    """
  end

  bmp_glyph 0xB7 do
    advance 5
    bounds 1..3, 3..5

    data """
    11
    11
    """
  end

  bmp_glyph 0xB9 do
    advance 6
    bounds 1..4, 4..11

    data """
    011
    111
    011
    011
    011
    011
    011
    """
  end

  bmp_glyph 0xBA do
    advance 7
    bounds 0..6, 4..10

    data """
    011110
    110011
    110011
    011110
    000000
    111111
    """
  end

  composite_glyph 0x00BC do
    component 0x00B9, 0, 0
    component 0x2044, 4, 0
    component 0x2084, 10, 0
  end

  composite_glyph 0x00BD do
    component 0x00B9, 0, 0
    component 0x2044, 4, 0
    component 0x2082, 10, 0
  end

  composite_glyph 0x00BE do
    component 0x00B3, 0, 0
    component 0x2044, 4, 0
    component 0x2084, 10, 0
  end

  bmp_glyph 0xC6 do
    advance 10
    bounds 0..9, 0..10

    data """
    011111111
    110011000
    110011000
    110011000
    111111111
    110011000
    110011000
    110011000
    110011000
    110011111
    """
  end

  composite_glyph 0xCC do
    component "grave.component", -2, 0
    component "I.short", 0, 0, flags: [:use_my_metrics]
  end

  composite_glyph 0xCD do
    component 0x00B4, -1, 0
    component "I.short", 0, 0, flags: [:use_my_metrics]
  end

  composite_glyph 0xCE do
    component "circumflex.component", -1, 0
    component "I.short", 0, 0, flags: [:use_my_metrics]
  end

  composite_glyph 0xCF do
    component "dieresis.component.i", -2, 0
    component "I.short", 0, 0, flags: [:use_my_metrics]
  end

  bmp_glyph 0xE6 do
    advance 11
    bounds 0..10, 0..7

    data """
    1111101110
    0000110011
    0111111111
    1100110000
    1100110000
    1100110011
    0111101110
    """
  end

  composite_glyph 0xEC do
    component "grave.component", -2, -2
    component 0x0131, 0, 0, flags: [:use_my_metrics]
  end

  composite_glyph 0xED do
    component 0x00B4, -1, -2
    component 0x0131, 0, 0, flags: [:use_my_metrics]
  end

  composite_glyph 0xEE do
    component "circumflex.component", -1, -2
    component 0x0131, 0, 0, flags: [:use_my_metrics]
  end

  composite_glyph 0xEF do
    component "dieresis.component.i", -2, -2
    component 0x0131, 0, 0, flags: [:use_my_metrics]
  end

  # dotless i
  # TODO: Move this glyph to Latin Extended-A module later.
  bmp_glyph 0x0131 do
    advance 5
    bounds 0..4, 0..7

    data """
    1110
    0110
    0110
    0110
    0110
    0110
    0011
    """
  end
end
