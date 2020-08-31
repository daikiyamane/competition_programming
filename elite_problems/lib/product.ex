defmodule Product do
  def main() do
    [a, b] =
      IO.gets("")
      |> String.trim()
      |> String.split()
      |> Enum.map(&String.to_integer/1)
    odd_or_even(a, b)
  end

  def odd_or_even(a, b) when rem(a * b, 2) == 0, do: IO.puts("Even")
  def odd_or_even(a, b) when rem(a * b, 2) != 0, do: IO.puts("Odd")
end
