defmodule Verbs.Mixfile do
  use Mix.Project

  def project do
    [
      app: :verbs,
      name: "Verbs",
      description: description(),
      source_url: "https://github.com/shannonwells/verbs_ex",
      homepage_url: "https://github.com/shannonwells/verbs_ex",
      package: package(),
      version: "0.5.5",
      elixir: "~> 1.5",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    "Conjugates English verbs"
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
    ]
  end

  defp package() do
    [
      name: "Verbs",
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/shannonwells/verbs_ex"}
    ]
  end
end
