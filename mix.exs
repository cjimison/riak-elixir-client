defmodule Riak.Mixfile do
  use Mix.Project

  def project do
    [ app: :riak,
      version: "1.0.0",
      elixir: "~> 1.0",
      deps: deps,
      build_per_environment: false,
      name: "Riak Elixir Client",
      source_url: "https://github.com/drewkerrigan/riak-elixir-client",
      description: description,
      package: package ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [ :pooler ],
      included_applications: [ :riakc ] ]
  end

  defp deps do
    [ {:earmark, only: :dev},
      {:ex_doc, only: :dev},
      {:linguist, "~> 0.1"},
      {:meck, github: "eproxus/meck", tag: "0.8.2", override: true},
      {:riak_pb, github: "cjimison/riak_pb", override: true, tag: "2.0.0.16", compile: "./rebar get-deps compile deps_dir=../"},
      {:riakc, github: "cjimison/riak-erlang-client", branch: "master", compile: "./rebar get-deps compile deps_dir=../"}, 
      {:pooler, "~> 1.5"}]
  end

  defp description do
    """
    A Riak client written in Elixir.
    """
  end

  defp package do
    [ files: ~w(config doc examples lib test LICENSE mix.exs mix.lock README.md THANKS),
      maintainers: [ "Drew Kerrigan", "Eduardo Gurgel" ],
      licenses: [ "Apache 2.0" ],
      links: %{"GitHub" => "https://github.com/drewkerrigan/riak-elixir-client",
               "Documentation" => "http://hexdocs.pm/riak"} ]
  end
end
