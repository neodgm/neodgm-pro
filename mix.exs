defmodule NeoDGMPro.MixProject do
  use Mix.Project

  def project do
    [
      app: :neodgm_pro,
      version: "1.0.11",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      pixel_font: [
        font_module: NeoDGMPro.Params
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:neodgm, github: "Dalgona/neodgm", ref: "ac6516358df2bc55c4d4004620784d93a24988b3"}
    ]
  end
end
