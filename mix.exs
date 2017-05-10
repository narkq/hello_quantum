defmodule HelloQuantum.Mixfile do
  use Mix.Project

  def project do
    [app: :hello_quantum,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [mod: {HelloQuantum, []}, extra_applications: [:logger]]
  end

  defp deps do
    [
      {:quantum, github: "c-rack/quantum-elixir", branch: "master"},
      {:timex, "~> 3.1"}
    ]
  end
end
