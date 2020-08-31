defmodule ShiftOnly do
  def main() do
    IO.gets("") |> String.trim() |> String.to_integer()
    list =
      IO.gets("")
      |> String.trim()
      |> String.split()
      |> Enum.map(&String.to_integer/1)
    div_count(list, 0)
    |> IO.puts()
  end

  def div_count(list, acc) do
    case Enum.all?(list, &rem(&1, 2) == 0) do
      true ->
        Enum.map(list, &div(&1, 2))
        |> div_count(acc+1)
      false ->
        acc
    end
  end
end
