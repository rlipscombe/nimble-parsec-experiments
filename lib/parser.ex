defmodule NimbleParsecExperiments.Parser.Boolean do
  import NimbleParsec

  def boolean(combinator \\ empty()) do
    true_p = string("true") |> replace(true)
    false_p = string("false") |> replace(false)

    choice(combinator, [true_p, false_p])
  end
end

defmodule NimbleParsecExperiments.Parser do
  import NimbleParsec
  import NimbleParsecExperiments.Parser.Boolean

  defparsec :parse, boolean() |> boolean()
end
