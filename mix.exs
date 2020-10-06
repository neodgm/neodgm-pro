defmodule NeoDGMPro.MixProject do
  use Mix.Project

  def project do
    [
      app: :neodgm_pro,
      version: "0.1.0",
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
      {:neodgm, github: "Dalgona/neodgm", ref: "f1e24beb5b1d6c4acd7b6bc06965e50ac316c9f9"}
    ]
  end
end
