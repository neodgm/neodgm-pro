use PixelFont.GlyphSource

glyph_source NeoDGMPro.BitmapFont.CJKSymbols do
  based_on NeoDGM.BitmapFont.CJKSymbols

  # U+3001 IDEOGRAPHIC COMMA
  bmp_glyph 0x3001 do
    advance 12
    bounds 2..6, -1..2

    data """
    1100
    0111
    0011
    """

    # U+3001 U+FE00 corner-justified form (default)
    # U+3001 U+FE01 centered form
    variations default: 1 do
      2 -> "uni3001.VS2"
    end
  end

  bmp_glyph "uni3001.VS2" do
    advance 12
    bounds 4..8, 2..5

    data """
    1100
    0111
    0011
    """
  end

  # U+3002 IDEOGRAPHIC FULL STOP
  bmp_glyph 0x3002 do
    advance 12
    bounds 2..6, -1..3

    data """
    0110
    1001
    1001
    0110
    """

    # U+3002 U+FE00 corner-justified form (default)
    # U+3002 U+FE01 centered form
    variations default: 1 do
      2 -> "uni3002.VS2"
    end
  end

  bmp_glyph "uni3002.VS2" do
    advance 12
    bounds 4..8, 2..6

    data """
    0110
    1001
    1001
    0110
    """
  end

  # U+3008 LEFT ANGLE BRACKET
  bmp_glyph 0x3008 do
    advance 8
    bounds 2..6, -2..11

    data """
    0001
    0001
    0010
    0010
    0100
    0100
    1000
    0100
    0100
    0010
    0010
    0001
    0001
    """
  end

  # U+3009 RIGHT ANGLE BRACKET
  bmp_glyph 0x3009 do
    advance 8
    bounds 2..6, -2..11

    data """
    1000
    1000
    0100
    0100
    0010
    0010
    0001
    0010
    0010
    0100
    0100
    1000
    1000
    """
  end

  # U+300A LEFT DOUBLE ANGLE BRACKET
  bmp_glyph 0x300A do
    advance 11
    bounds 2..9, -2..11

    data """
    0001001
    0001001
    0010010
    0010010
    0100100
    0100100
    1001000
    0100100
    0100100
    0010010
    0010010
    0001001
    0001001
    """
  end

  # U+300B RIGHT DOUBLE ANGLE BRACKET
  bmp_glyph 0x300B do
    advance 11
    bounds 2..9, -2..11

    data """
    1001000
    1001000
    0100100
    0100100
    0010010
    0010010
    0001001
    0010010
    0010010
    0100100
    0100100
    1001000
    1001000
    """
  end

  # U+300C LEFT CORNER BRACKET
  bmp_glyph 0x300C do
    advance 8
    bounds 2..7, 4..11

    data """
    11111
    10000
    10000
    10000
    10000
    10000
    10000
    """
  end

  # U+300D RIGHT CORNER BRACKET
  bmp_glyph 0x300D do
    advance 8
    bounds 1..6, -2..5

    data """
    00001
    00001
    00001
    00001
    00001
    00001
    11111
    """
  end

  # U+300E LEFT WHITE CORNER BRACKET
  bmp_glyph 0x300E do
    advance 8
    bounds 2..7, 4..11

    data """
    11111
    10001
    10111
    10100
    10100
    10100
    11100
    """
  end

  # U+300F RIGHT WHITE CORNER BRACKET
  bmp_glyph 0x300F do
    advance 8
    bounds 1..6, -2..5

    data """
    00111
    00101
    00101
    00101
    11101
    10001
    11111
    """
  end

  # U+3010 LEFT BLACK LENTICULAR BRACKET
  bmp_glyph 0x3010 do
    advance 8
    bounds 2..7, -2..11

    data """
    11111
    11110
    11100
    11100
    11000
    11000
    11000
    11000
    11000
    11100
    11100
    11110
    11111
    """
  end

  # U+3011 RIGHT BLACK LENTICULAR BRACKET
  bmp_glyph 0x3011 do
    advance 8
    bounds 1..6, -2..11

    data """
    11111
    01111
    00111
    00111
    00011
    00011
    00011
    00011
    00011
    00111
    00111
    01111
    11111
    """
  end

  # U+3014 LEFT TORTOISE SHELL BRACKET
  bmp_glyph 0x3014 do
    advance 8
    bounds 2..7, -2..11

    data """
    00011
    01100
    10000
    10000
    10000
    10000
    10000
    10000
    10000
    10000
    10000
    01100
    00011
    """
  end

  # U+3015 RIGHT TORTOISE SHELL BRACKET
  bmp_glyph 0x3015 do
    advance 8
    bounds 1..6, -2..11

    data """
    11000
    00110
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    00001
    00110
    11000
    """
  end

  # U+3016 LEFT WHITE LENTICULAR BRACKET
  bmp_glyph 0x3016 do
    advance 9
    bounds 2..8, -2..11

    data """
    111111
    100010
    100100
    100100
    101000
    101000
    101000
    101000
    101000
    100100
    100100
    100010
    111111
    """
  end

  # U+3017 RIGHT WHITE LENTICULAR BRACKET
  bmp_glyph 0x3017 do
    advance 9
    bounds 1..7, -2..11

    data """
    111111
    010001
    001001
    001001
    000101
    000101
    000101
    000101
    000101
    001001
    001001
    010001
    111111
    """
  end

  # U+3018 LEFT WHITE TORTOISE SHELL BRACKET
  bmp_glyph 0x3018 do
    advance 9
    bounds 2..8, -2..11

    data """
    000111
    011001
    100111
    101000
    101000
    101000
    101000
    101000
    101000
    101000
    100111
    011001
    000111
    """
  end

  # U+3019 RIGHT WHITE TORTOISE SHELL BRACKET
  bmp_glyph 0x3019 do
    advance 9
    bounds 1..7, -2..11

    data """
    111000
    100110
    111001
    000101
    000101
    000101
    000101
    000101
    000101
    000101
    111001
    100110
    111000
    """
  end

  # U+301A LEFT WHITE SQUARE BRACKET
  bmp_glyph 0x301A do
    advance 8
    bounds 2..7, -2..11

    data """
    11111
    10100
    10100
    10100
    10100
    10100
    10100
    10100
    10100
    10100
    10100
    10100
    11111
    """
  end

  # U+301B RIGHT WHITE SQUARE BRACKET
  bmp_glyph 0x301B do
    advance 8
    bounds 1..6, -2..11

    data """
    11111
    00101
    00101
    00101
    00101
    00101
    00101
    00101
    00101
    00101
    00101
    00101
    11111
    """
  end
end
