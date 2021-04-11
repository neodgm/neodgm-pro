use PixelFont.OTFLayout

lookups NeoDGMPro.Lookups.GPOS.Kerning, for: "GPOS" do
  module do
    alias PixelFont.TableSource.GPOS
    alias PixelFont.TableSource.GPOS.PairAdjustment2
    alias PixelFont.TableSource.GPOS.ValueRecord
    alias PixelFont.TableSource.OTFLayout.ClassDefinition
    alias PixelFont.TableSource.OTFLayout.Lookup

    defp scripts do
      %{
        "DFLT" => [:default],
        "latn" => [:default],
        "hang" => [:default],
        "jamo" => [:default]
      }
    end
  end

  %Lookup{
    owner: GPOS,
    name: "Kerning rules for punctuations",
    features: %{"kern" => scripts()},
    type: 2,
    subtables: [
      %PairAdjustment2{
        class_1: %ClassDefinition{
          assignments: %{
            1 => ',.\u2024\u2025\u2026',
            2 => '/',
            3 => '\\'
          }
        },
        class_2: %ClassDefinition{
          assignments: %{
            1 => [0x2019, 0x201D],
            2 => '?',
            3 => '/',
            4 => '\\',
            5 => '.,\u2024\u2025\u2026'
          }
        },
        value_format_1: ~w(x_advance)a,
        value_format_2: [],
        records: %{
          {1, 1} => {%ValueRecord{x_advance: -1}, %ValueRecord{}},
          {1, 2} => {%ValueRecord{x_advance: -2}, %ValueRecord{}},
          {1, 4} => {%ValueRecord{x_advance: -3}, %ValueRecord{}},
          {2, 3} => {%ValueRecord{x_advance: -2}, %ValueRecord{}},
          {2, 5} => {%ValueRecord{x_advance: -3}, %ValueRecord{}},
          {3, 4} => {%ValueRecord{x_advance: -2}, %ValueRecord{}}
        }
      }
    ]
  }

  %Lookup{
    owner: GPOS,
    name: "Kerning rules for Latin",
    features: %{"kern" => scripts()},
    type: 2,
    subtables: [
      %PairAdjustment2{
        class_1: %ClassDefinition{
          assignments: %{
            1 => 'F',
            2 => 'T',
            3 => 'f\uFB00'
          }
        },
        class_2: %ClassDefinition{
          assignments: %{
            1 => 'acdegmnopqruvwxyzàáæçðèéòóøùúýı',
            2 => 'âäåêëôöûüÿ',
            3 => 'fil\uFB00\uFB01\uFB02\uFB03\uFB04'
          }
        },
        value_format_1: ~w(x_advance)a,
        value_format_2: [],
        records: %{
          {1, 1} => {%ValueRecord{x_advance: -1}, %ValueRecord{}},
          {1, 2} => {%ValueRecord{x_advance: -1}, %ValueRecord{}},
          {2, 1} => {%ValueRecord{x_advance: -2}, %ValueRecord{}},
          {2, 2} => {%ValueRecord{x_advance: -1}, %ValueRecord{}},
          {3, 3} => {%ValueRecord{x_advance: -1}, %ValueRecord{}}
        }
      }
    ]
  }

  %Lookup{
    owner: GPOS,
    name: "Kerning rules for opening quotation marks and Hangul",
    features: %{"kern" => scripts()},
    type: 2,
    subtables: [
      %PairAdjustment2{
        class_1: %ClassDefinition{
          assignments: %{
            1 => [0x2018, 0x201C]
          }
        },
        class_2: %ClassDefinition{
          assignments: %{
            1 => Enum.to_list(0x1100..0x1112),
            2 => Enum.to_list(0xAC00..0xD7A3),
            3 =>
              for cho_set <- 0..7, cho <- 0..18 do
                "cho_#{cho_set}_#{cho |> to_string() |> String.pad_leading(2, "0")}"
              end
          }
        },
        value_format_1: ~w(x_advance)a,
        value_format_2: [],
        records:
          Map.new(1..3, fn class_2 ->
            {{1, class_2}, {%ValueRecord{x_advance: -1}, %ValueRecord{}}}
          end)
      }
    ]
  }
end
