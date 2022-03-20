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
        font_module: NeoDGMPro.Font
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
      {:neodgm, github: "neodgm/neodgm", ref: "5b8429e8ade98d877fed1f55da07da192490c544"},
      {:pixel_font, github: "Dalgona/pixel_font", ref: "c86174f32ca5f4ab91e18872ad7f697579227ae4", override: true}
    ]
  end
end
