defmodule NeoDGMPro.MixProject do
  use Mix.Project

  def project do
    [
      app: :neodgm_pro,
      version: "1.0.11",
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
      {:neodgm, github: "Dalgona/neodgm", ref: "10c0e8e1c214541fb766f83b261fb734d249d8e4"}
    ]
  end
end
