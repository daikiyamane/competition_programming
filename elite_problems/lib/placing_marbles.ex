defmodule PlacingMarbles do
  def main() do
    IO.gets("")
    |> String.trim()
    |> String.to_charlist()
    |> count()
    |> IO.puts()
  end

  def count(list) do
    Enum.filter(list, &(&1 == 49)) |> Enum.count()
  end
end
