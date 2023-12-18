defmodule CamtParser.MixProject do
  use Mix.Project

  @source_url "https://github.com/0x7fdev/camt_parser"
  @version "0.0.0"

  def project do
    [
      app: :camt_parser,
      version: @version,
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  ###

  defp deps do
    []
  end

  defp package do
    [
      description:
        "Parser for CAMT (Cash Management) - a set of bank statement messages defined by ISO 20022, considered the universal financial industry message scheme.",
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => @source_url
      }
    ]
  end
end
