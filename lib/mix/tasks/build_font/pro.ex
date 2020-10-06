defmodule Mix.Tasks.BuildFont.Pro do
  use Mix.Task
  alias NeoDGMPro.Params
  alias PixelFont.Builder

  def run(_) do
    ttf = Builder.build_ttf(Params.params())

    "neodgm_pro.ttf"
    |> Path.expand(File.cwd!())
    |> File.open!([:write, :binary], &IO.binwrite(&1, ttf))
  end
end
