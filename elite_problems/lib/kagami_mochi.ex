defmodule KagamiMochi do
  def main() do
    {_, d} = input()
    pile_up(d)
    |> IO.puts()
  end

  def input() do
    n =
      IO.gets("")
      |> String.trim()
      |> String.to_integer()
    d =
      for _ <- 1..n do
         IO.gets("")
         |> String.trim()
         |> String.to_integer()
      end
    {n, d}
  end

  def pile_up(d) when is_list(d) do
    Enum.uniq(d)
    |> Enum.count()
  end
end
