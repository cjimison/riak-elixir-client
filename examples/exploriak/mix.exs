defmodule Exploriak.Mixfile do
  use Mix.Project

  def project do
    [ app: :exploriak,
      version: "0.0.1",
      elixir: "~> 1.0",
      deps: deps,
      escript: escript ]
  end

  def escript do
    [ main_module: Exploriak,
      app: :riak ]
  end

  defp deps do
    [ {:riak, "~> 1.0"} ]
  end
end
