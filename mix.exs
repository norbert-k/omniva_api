defmodule OmnivaApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :omniva_api,
      version: "0.1.0",
      elixir: "~> 1.8",
      description: description(),
      package: package(),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "omniva_api",
      source_url: "https://github.com/nkyian/omniva_api"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {OmnivaApi.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.4"},
      {:jason, "~> 1.1"},
      {:ex_doc, ">= 0.0.0", only: :dev}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp description() do
    "Omniva parcel machine service API wrapper"
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "omniva_api",
      # These are the default files included in the package
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/nkyian/omniva_api"}
    ]
  end
end
