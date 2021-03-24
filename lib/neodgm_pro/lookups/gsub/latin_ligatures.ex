use PixelFont.OTFLayout

lookups NeoDGMPro.Lookups.GSUB.LatinLigatures, for: "GSUB" do
  module do
    alias PixelFont.TableSource.OTFLayout.Lookup
    alias PixelFont.TableSource.GSUB
    alias PixelFont.TableSource.GSUB.Ligature1
  end

  %Lookup{
    owner: GSUB,
    name: "Ligature substitutions ffi fi",
    features: %{
      "liga" => %{
        # In Turkish language, the "dotless i" letter is used.
        # Therefore ligatures for "ffi" and "fi" must be disabled.
        "latn" => [:default]
      }
    },
    type: 4,
    subtables: [
      %Ligature1{
        substitutions: [
          {'ffi', 0xFB03},
          {'fi', 0xFB01}
        ]
      }
    ]
  }

  %Lookup{
    owner: GSUB,
    name: "Ligature substitutions ffl fl ff",
    features: %{
      "liga" => %{
        "latn" => [:default, "TRK "]
      }
    },
    type: 4,
    subtables: [
      %Ligature1{
        substitutions: [
          {'ffl', 0xFB04},
          {'fl', 0xFB02},
          {'ff', 0xFB00}
        ]
      }
    ]
  }
end
