defmodule Verbs.Mixfile do
  use Mix.Project

  def project do
    [
      app: :verbs,
      licenses: ["MIT"],
      source_url: "https://github.com/shannonwells/verbs_ex",
      homepage_url: "https://github.com/shannonwells/verbs_ex",
      version: "0.5.4",
      elixir: "~> 1.5",
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

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
    ]
  end
end
