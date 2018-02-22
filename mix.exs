defmodule PhoenixHtml.Mixfile do
  use Mix.Project

  # Also change package.json version
  @version "2.11.0-dev"

  def project do
    [
      app: :phoenix_html,
      version: @version,
      elixir: "~> 1.3",
      deps: deps(),
      name: "Phoenix.HTML",
      description: "Phoenix.HTML functions for working with HTML strings and templates",
      package: package(),
      docs: [
        source_ref: "v#{@version}",
        main: "Phoenix.HTML",
        source_url: "https://github.com/phoenixframework/phoenix_html"
      ]
    ]
  end

  def application do
    [applications: [:logger, :plug]]
  end

  defp deps do
    [
      {:plug, "~> 1.5-rc", github: "elixir-plug/plug"},
      {:ex_doc, "~> 0.12", only: :docs}
    ]
  end

  defp package do
    [
      maintainers: ["Chris McCord", "José Valim"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/phoenixframework/phoenix_html"},
      files: ~w(lib priv) ++ ~w(CHANGELOG.md LICENSE mix.exs package.json README.md)
    ]
  end
end
