defmodule SomeSum do
  def main() do
    [n, a, b] =
      IO.gets("")
      |> String.trim()
      |> String.split()
      |> Enum.map(&String.to_integer/1)
    some_sum(n, a, b)
  end

  def some_sum(n, a, b) do
    1..n
    |> Enum.filter(&(a <= digits_sum(&1) and b >= digits_sum(&1)))
    |> Enum.sum()
    |> IO.puts()
  end

  def digits_sum(n) do
    Integer.to_string(n)
    |> String.codepoints()
    |> Enum.map(&(String.to_integer/1))
    |> Enum.sum()
  end
end
