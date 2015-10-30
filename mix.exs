defmodule JsonDiffEx.Mixfile do
  use Mix.Project

  def project do
    [app: :json_diff_ex,
     version: "0.0.2",
     description: "Diff for JSON in Elixir",
     package: package,
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
      maintainers: ["Olafur Arason"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/olafura/json_diff_ex"}
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:poison, "~> 1.5", only: :test},
     {:dogma, "~> 0.0", only: :dev}]
  end
end
