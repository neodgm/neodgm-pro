use PixelFont.OTFLayout

lookups NeoDGMPro.Lookups.GSUB.LatinLigatures, for: "GSUB" do
  lookup :ligature, "Ligature substitutions ffi fi" do
    feature "liga", %{"latn" => [:default]}

    substitutions do
      substitute 'ffi', 0xFB03
      substitute 'fi', 0xFB01
    end
  end

  lookup :ligature, "Ligature substitutions ffl fl ff" do
    feature "liga", %{"latn" => [:default, "TRK "]}

    substitutions do
      substitute 'ffl', 0xFB04
      substitute 'fl', 0xFB02
      substitute 'ff', 0xFB00
    end
  end
end
