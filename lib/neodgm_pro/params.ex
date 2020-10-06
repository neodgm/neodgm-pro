defmodule NeoDGMPro.Params do
  alias NeoDGMPro.BitmapFont
  alias NeoDGMPro.GPOS
  alias NeoDGMPro.GSUB
  alias NeoDGMPro.NameTable
  alias PixelFont.Font
  alias PixelFont.Font.Metrics
  alias PixelFont.TableSource.OS_2

  @version Version.parse!(Mix.Project.config()[:version])

  @spec params :: Font.t()
  def params do
    %Font{
      version: @version,
      name_table: NameTable.name_table(),
      metrics: metrics(),
      os_2: os_2(),
      glyph_sources: BitmapFont.get_sources(),
      notdef_glyph: NeoDGM.BitmapFont.NotDef,
      gpos: GPOS.get_gpos(),
      gsub: GSUB.get_gsub()
    }
  end

  @spec metrics() :: Metrics.t()
  defp metrics do
    %Metrics{
      units_per_em: 16,
      ascender: 12,
      descender: 4,
      line_gap: 0,
      underline_size: 1,
      underline_position: -2,
      is_fixed_pitch: false
    }
  end

  @spec os_2() :: OS_2.t()
  defp os_2 do
    %OS_2{
      avg_char_width: :auto,
      weight_class: :normal,
      width_class: :medium,
      subscript_size: {8, 16},
      subscript_offset: {0, 8},
      superscript_size: {8, 16},
      superscript_offset: {0, 8},
      strike_size: 1,
      strike_position: 4,
      family_class: {:sans_serif, :no_classification},
      panose: <<2, 1, 5, 3, 6, 2, 1, 4, 2, 3>>,
      vendor_id: "5757",
      x_height: 7,
      cap_height: 10
    }
  end
end
