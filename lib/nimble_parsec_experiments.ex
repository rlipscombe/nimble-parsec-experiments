defmodule NimbleParsecExperiments do
  def main(_args) do
    {:ok, parsed, _rest, _ctx, _line, _col} = NimbleParsecExperiments.Parser.parse("truetrue")
    IO.inspect parsed
  end
end
