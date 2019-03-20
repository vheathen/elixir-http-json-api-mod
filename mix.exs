defmodule MinimalServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :minimal_server,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {MinimalServer.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 4.0"},
      {:plug, "~> 1.7"},
      {:cowboy, "~> 2.5"},
      {:plug_cowboy, "~> 2.0"}
    ]
  end
end
