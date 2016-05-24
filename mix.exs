defmodule Money.Mixfile do
  use Mix.Project

  @version "0.0.1-dev"
  @github_url "https://github.com/liuggio/money"

  def project do
    [app: :money,
     name: "Money",
     version: @version,
     elixir: "~> 1.0",
     deps: deps,
     source_url: "https://github.com/liuggio/money",
     docs: fn ->
       [source_ref: "v#{@version}",
        canonical: "http://hexdocs.pm/money",
        main: "Money",
        source_url: @github_url,
        readme: "README.md"]
     end,
     description: description,
     package: package]
  end

  def application do
    []
  end

  defp deps do
    [
      # Code style
      {:credo, "~> 0.4-beta", only: [:dev, :test]},

      # Docs
      {:ex_doc, "~> 0.11", only: :docs},
      {:earmark, "~> 0.2", only: :docs},
    ]
  end

  defp description do
    """
    Elixir library for working with Money safer, easier, and fun, is an interpretation of the Fowler's Money pattern in fun.prog.
    """
  end

  defp package do
    [contributors: ["Giulio De Donato"],
     licenses: ["MIT"],
     links: %{"GitHub" => @github_url}]
  end
end
