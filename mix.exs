defmodule Remix.Mixfile do
  use Mix.Project

  def project do
    [app: :remix,
     version: "0.0.5",
     elixir: "~> 1.0",
     package: package(),
     description: description(),
     deps: deps()]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Remix, []}
    ]
  end

  defp deps, do: []

  defp package do
    [
      licenses: ["Apache 2.0"],
      maintainers: ["Fenix Tubluk"],
      links: %{
        "GitHub" => "https://github.com/FenixTubluk/remix"
      }
    ]
  end

  defp description do
    """
    Recompiles mix projects on any change to the lib directory.
    """
  end
end
