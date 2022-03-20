use PixelFont.GlyphSource

glyph_source NeoDGMPro.BitmapFont.BasicLatin do
  based_on NeoDGM.BitmapFont.BasicLatin, only: :unicode

  module do
    require NeoDGM.Macros.Glyphs.BasicLatin, as: BasicLatinMacros
  end

  bmp_glyph ?\s do
    advance 5
    bounds 0..0, 0..0
    data ""
  end

  bmp_glyph ?! do
    advance 5
    bounds 1..3, 0..10

    data """
    11
    11
    11
    11
    11
    11
    11
    00
    11
    11
    """
  end

  bmp_glyph ?" do
    advance 6
    bounds 0..5, 7..11

    data """
    11011
    11011
    11011
    01010
    """
  end

  bmp_glyph ?' do
    advance 3
    bounds 0..2, 7..11

    data """
    11
    11
    11
    10
    """
  end

  bmp_glyph ?( do
    advance 6
    bounds 1..5, -2..11

    data """
    0011
    0110
    1100
    1100
    1100
    1100
    1100
    1100
    1100
    1100
    1100
    0110
    0011
    """
  end

  bmp_glyph ?) do
    advance 5
    bounds 0..4, -2..11

    data """
    1100
    0110
    0011
    0011
    0011
    0011
    0011
    0011
    0011
    0011
    0011
    0110
    1100
    """
  end

  bmp_glyph ?* do
    advance 9
    bounds 0..8, 2..7

    data """
    01100110
    00111100
    11111111
    00111100
    01100110
    """
  end

  bmp_glyph ?+ do
    advance 7
    bounds 0..6, 2..7

    data """
    001100
    001100
    111111
    001100
    001100
    """
  end

  bmp_glyph ?, do
    advance 5
    bounds 0..3, -2..2

    data """
    011
    011
    011
    110
    """
  end

  bmp_glyph ?. do
    advance 5
    bounds 1..3, 0..2

    data """
    11
    11
    """
  end

  # cv01-0: Slashed zero (default)
  # cv01-1: Empty zero, which looks exactly like Latin captal letter O
  # cv01-2: Dotted zero
  # cv01-3: Reverse-slashed zero
  # cv01-4: Slashed zero, more rounded
  # cv01-5: Empty zero, more rounded
  # cv01-6: Dotted zero, more rounded
  # cv01-7: Reverse-slashed zero, more rounded
  bmp_glyph ?0, do: BasicLatinMacros.digit(0, 0)
  bmp_glyph "zero.cv01.1", do: BasicLatinMacros.digit(0, 1)
  bmp_glyph "zero.cv01.2", do: BasicLatinMacros.digit(0, 2)
  bmp_glyph "zero.cv01.3", do: BasicLatinMacros.digit(0, 3)
  bmp_glyph "zero.cv01.4", do: BasicLatinMacros.digit(0, 4)
  bmp_glyph "zero.cv01.5", do: BasicLatinMacros.digit(0, 5)
  bmp_glyph "zero.cv01.6", do: BasicLatinMacros.digit(0, 6)
  bmp_glyph "zero.cv01.7", do: BasicLatinMacros.digit(0, 7)

  bmp_glyph ?1, do: BasicLatinMacros.digit(1, 0)

  bmp_glyph ?2, do: BasicLatinMacros.digit(2, 0)
  bmp_glyph "two.cv02.1", do: BasicLatinMacros.digit(2, 1)

  bmp_glyph ?3, do: BasicLatinMacros.digit(3, 0)
  bmp_glyph "three.cv03.1", do: BasicLatinMacros.digit(3, 1)

  bmp_glyph ?4, do: BasicLatinMacros.digit(4, 0)
  bmp_glyph "four.cv04.1", do: BasicLatinMacros.digit(4, 1)

  bmp_glyph ?5, do: BasicLatinMacros.digit(5, 0)
  bmp_glyph "five.cv05.1", do: BasicLatinMacros.digit(5, 1)

  bmp_glyph ?6, do: BasicLatinMacros.digit(6, 0)
  bmp_glyph "six.cv06.1", do: BasicLatinMacros.digit(6, 1)

  bmp_glyph ?7, do: BasicLatinMacros.digit(7, 0)
  bmp_glyph "seven.cv07.1", do: BasicLatinMacros.digit(7, 1)

  bmp_glyph ?8, do: BasicLatinMacros.digit(8, 0)

  bmp_glyph ?9, do: BasicLatinMacros.digit(9, 0)
  bmp_glyph "nine.cv08.1", do: BasicLatinMacros.digit(9, 1)

  bmp_glyph ?: do
    advance 5
    bounds 1..3, 1..8

    data """
    11
    11
    00
    00
    00
    11
    11
    """
  end

  bmp_glyph ?; do
    advance 5
    bounds 0..3, 0..8

    data """
    011
    011
    000
    000
    000
    011
    011
    110
    """
  end

  bmp_glyph ?@ do
    advance 12
    bounds 0..11, 0..10

    data """
    00111111100
    01100000110
    11000000011
    11001111011
    11011011011
    11011011011
    11011011011
    11001111110
    01100000000
    00111111100
    """
  end

  bmp_glyph ?I do
    advance 5
    bounds 0..4, 0..10

    data """
    1111
    0110
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

  bmp_glyph ?M do
    advance 9
    bounds 0..8, 0..10

    data """
    11111110
    11011011
    11011011
    11011011
    11011011
    11011011
    11011011
    11011011
    11011011
    11011011
    """
  end

  bmp_glyph ?T do
    advance 9
    bounds 0..8, 0..10

    data """
    111111110
    000110000
    000110000
    000110000
    000110000
    000110000
    000110000
    000110000
    000110000
    000110000
    """
  end

  bmp_glyph ?W do
    advance 9
    bounds 0..8, 0..10

    data """
    11011011
    11011011
    11011011
    11011011
    11011011
    11011011
    11011011
    11011011
    11011011
    01111110
    """
  end

  bmp_glyph ?Y do
    advance 7
    bounds 0..6, 0..10

    data """
    110011
    110011
    110011
    110011
    011110
    001100
    001100
    001100
    001100
    001100
    """
  end

  bmp_glyph ?[ do
    advance 6
    bounds 1..5, -2..11

    data """
    1111
    1100
    1100
    1100
    1100
    1100
    1100
    1100
    1100
    1100
    1100
    1100
    1111
    """
  end

  bmp_glyph ?] do
    advance 5
    bounds 0..4, -2..11

    data """
    1111
    0011
    0011
    0011
    0011
    0011
    0011
    0011
    0011
    0011
    0011
    0011
    1111
    """
  end

  bmp_glyph ?` do
    advance 5
    bounds 0..4, 8..11

    data """
    1100
    0110
    0011
    """
  end

  bmp_glyph ?f do
    advance 6
    bounds 0..5, 0..10

    data """
    00111
    01100
    01100
    11111
    01100
    01100
    01100
    01100
    01100
    01100
    """
  end

  bmp_glyph ?i do
    advance 5
    bounds 0..4, 0..10

    data """
    0110
    0110
    0000
    1110
    0110
    0110
    0110
    0110
    0110
    0011
    """
  end

  bmp_glyph ?j do
    advance 5
    bounds 0..3, -3..10

    data """
    011
    011
    000
    111
    011
    011
    011
    011
    011
    011
    011
    011
    110
    """
  end

  bmp_glyph ?l do
    advance 5
    bounds 0..4, 0..10

    data """
    1110
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

  bmp_glyph ?m do
    advance 9
    bounds 0..8, 0..7

    data """
    11111110
    11011011
    11011011
    11011011
    11011011
    11011011
    11011011
    """
  end

  bmp_glyph ?t do
    advance 6
    bounds 0..5, 0..10

    data """
    01100
    01100
    01100
    11111
    01100
    01100
    01100
    01100
    01100
    00111
    """
  end

  bmp_glyph ?w do
    advance 9
    bounds 0..8, 0..7

    data """
    11011011
    11011011
    11011011
    11011011
    11011011
    11011011
    01111110
    """
  end

  bmp_glyph ?{ do
    advance 7
    bounds 0..6, -2..11

    data """
    000111
    001100
    001100
    001100
    001100
    001100
    111000
    001100
    001100
    001100
    001100
    001100
    000111
    """
  end

  bmp_glyph ?| do
    advance 5
    bounds 1..3, -2..11

    data """
    11
    11
    11
    11
    11
    11
    11
    11
    11
    11
    11
    11
    11
    """
  end

  bmp_glyph ?} do
    advance 7
    bounds 0..6, -2..11

    data """
    111000
    001100
    001100
    001100
    001100
    001100
    000111
    001100
    001100
    001100
    001100
    001100
    111000
    """
  end
end
