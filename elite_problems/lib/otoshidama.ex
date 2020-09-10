defmodule Otoshidama do
  def main() do
    [n, y] = input()
    {y_10000, y_5000, y_1000} = calc(n, y)
    IO.puts("#{y_10000} #{y_5000} #{y_1000}")
  end

  def input() do
      IO.gets("")
      |> String.trim()
      |> String.split()
      |> Enum.map(&String.to_integer/1)
  end

  def calc(n, y) do
    for a <- 0..n,
        b <- 0..(n-a) do
        {a, b, (n - a - b)}
    end
    |> Enum.filter(fn {a, b, c} -> 10000 * a + 5000 * b + 1000 * c == y end)
    |> Enum.at(0, {-1, -1, -1})
  end
end
