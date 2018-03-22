defmodule Verbs.Mixfile do
  use Mix.Project

  def project do
    [
      app: :verbs,
      version: "0.5.2",
      elixir: "~> 1.5",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      deps: deps(),

      # docs
      name: "verbs",
      source_url: "https://github.com/shannonwells/verbs_ex",
      package: package(),
      docs: [
        main: "Verbs", # The main page in the docs
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    "Conjugates English verbs"
  end

  defp package do
    [
      maintainers: ["Shannon Wells"],
      links: %{"GitHub": "https://github.com/shannonwells/verbs_ex"},
      licenses: ["MIT"]
    ]
  end
end
