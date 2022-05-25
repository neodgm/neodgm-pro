defmodule NeoDGMPro.MixProject do
  use Mix.Project

  def project do
    [
      app: :neodgm_pro,
      version: "1.0.20",
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
      {:neodgm, github: "neodgm/neodgm", ref: "51aaf6e273a9bd9f9f01d647e65e572da7181128"}
    ]
  end
end
