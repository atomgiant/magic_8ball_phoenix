defmodule Magic8ballPhoenix.Mixfile do
  use Mix.Project

  def project do
    [app: :magic8ball_phoenix,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {Magic8ballPhoenix, []},
     applications: [:httpoison, :phoenix, :phoenix_html, :cowboy, :logger, :magic_8ball]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [{:httpoison, "~> 0.9.0"},
     {:phoenix, "~> 1.2"},
     {:phoenix_html, "~> 2.1"},
     {:phoenix_live_reload, "~> 1.0", only: :dev},
     {:cowboy, "~> 1.0"},
     {:magic_8ball, "~> 0.1", git: "git://github.com/atomgiant/magic_8ball_api"},
     # NOTE: In dev, you can use the following for local changes
     # {:magic_8ball, path: "../magic_8ball_api"},
    ]
  end
end
