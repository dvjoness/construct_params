defmodule ConstructParams.MixProject do
  use Mix.Project

  @github_url "https://github.com/Nitrino/construct_params"

  def project do
    [
      app: :construct_params,
      version: "0.3.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description(),
      name: "ConstructParams",
      source_url: @github_url,
      homepage_url: @github_url,
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      name: :construct_params,
      maintainers: ["Petr Stepchenko"],
      licenses: ["MIT"],
      links: %{
        "Changelog" => "#{@github_url}/blob/master/CHANGELOG.md",
        "GitHub" => @github_url
      }
    ]
  end

  defp description do
    "Casting the incoming controller parameters"
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md"]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:construct, git: "https://github.com/dvjoness/construct.git", tag: "v2.1.11"},
      {:decorator, "~> 1.4"},
      {:ex_doc, "~> 0.24.1", only: :dev}
    ]
  end
end
