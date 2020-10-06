defmodule NeoDGMPro.MixProject do
  use Mix.Project

  def project do
    [
      app: :neodgm_pro,
      version: "1.0.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:neodgm, github: "Dalgona/neodgm", ref: "3b81d66a284e31a574882b9264bb703ed10123a3"}
    ]
  end
end
