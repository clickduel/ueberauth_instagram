defmodule UeberauthInstagram.Mixfile do
  use Mix.Project

  @version "0.3.0"
  @url "https://github.com/silentsilas/ueberauth_instagram"

  def project do
    [app: :ueberauth_instagram,
     version: @version,
     name: "Ueberauth Instagram Strategy",
     package: package(),
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     source_url: @url,
     homepage_url: @url,
     description: description(),
     deps: deps(),
     docs: docs()]
  end

  def application do
    [applications: [:logger, :oauth2, :ueberauth]]
  end

  defp deps do
    [{:ueberauth, "~> 0.7.0"},
     {:oauth2, "~> 0.5"},
     {:ex_doc, "~> 0.1", only: :dev},
     {:earmark, ">= 0.0.0", only: :dev},
     {:dogma, ">= 0.0.0", only: [:dev, :test]}]
  end

  defp docs do
    [extras: docs_extras(), main: "extra-readme"]
  end

  defp docs_extras do
    ["README.md"]
  end

  defp description do
    "An Uberauth strategy for Instagram authentication."
  end

  defp package do
    [files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Jason Truluck", "Silas Tippens"],
      licenses: ["MIT"],
      links: %{"GitHub": @url}]
  end
end
