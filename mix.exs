defmodule LogCake.MixProject do
  use Mix.Project

  def project do
    [
      app: :pancake_log,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {LogCake.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug, "~> 1.10"},
      {:plug_cowboy, "~> 1.0"},
      {:connection, "~> 1.1"},
      {:httpoison, "~> 1.0"},
      {:poison, "~> 3.1"},
      {:poolboy, "~> 1.5"}
    ]
  end
end
