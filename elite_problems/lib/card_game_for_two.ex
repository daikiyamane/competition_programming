defmodule CardGameForTwo do
  def main() do
    _n =
      IO.gets("")
      |> String.trim()
      |> String.to_integer()
    a =
      IO.gets("")
      |> String.trim()
      |> String.split()
      |> Enum.map(&String.to_integer/1)
      |> Enum.sort(:desc)
    take(a, 0)
    |> IO.puts()
  end

  def take(a, n), do: _take(a, n, 0, 0)

  defp _take([], _, a_acc, b_acc), do: a_acc - b_acc

  defp _take([h|t], n, a_acc, b_acc) do
    case rem(n, 2) do
      0 -> _take(t, n + 1, a_acc + h, b_acc)
      1 -> _take(t, n + 1, a_acc, b_acc + h)
    end
  end
end
