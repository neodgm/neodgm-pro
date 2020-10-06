defmodule NeoDGMPro.GPOS do
  alias PixelFont.TableSource.GPOS
  alias PixelFont.TableSource.OTFLayout

  @spec get_gpos() :: GPOS.t()
  def get_gpos, do: make_gpos([NeoDGM.GPOS.Hangul, __MODULE__])

  @spec make_gpos([module()]) :: GPOS.t()
  defp make_gpos(modules) do
    gpos_data =
      ~w(script feature lookup)
      |> Enum.map(fn field ->
        mod_name_base = String.capitalize(field)
        struct_mod = Module.concat(OTFLayout, "#{mod_name_base}List")

        list_struct =
          modules
          |> Enum.map(&Module.concat([&1, "#{mod_name_base}s"]).data())
          |> List.foldl(struct!(struct_mod), &struct_mod.concat(&2, &1))

        {:"#{field}_list", list_struct}
      end)

    struct!(GPOS, gpos_data)
  end
end
