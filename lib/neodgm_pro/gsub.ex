defmodule NeoDGMPro.GSUB do
  alias PixelFont.TableSource.GSUB
  alias PixelFont.TableSource.OTFLayout

  @spec get_gsub() :: GSUB.t()
  def get_gsub, do: make_gsub([NeoDGM.GSUB.Hangul, __MODULE__])

  @spec make_gsub([module()]) :: GSUB.t()
  defp make_gsub(modules) do
    gsub_data =
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

    struct!(GSUB, gsub_data)
  end
end
