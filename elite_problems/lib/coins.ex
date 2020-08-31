defmodule Coins do
  def main() do
    [a, b, c, x] = for _ <- 1..4, do: IO.gets("") |> String.trim() |> String.to_integer()
    coins(a, b, c, x)
    |> IO.puts()
  end
  def coins(n500, n100, n50, total) do
     for i <- 0..n50,
         j <- 0..n100,
         k <- 0..n500 do
       i * 50 + j * 100 + k * 500
     end
     |> Enum.count(&(&1 == total))
   end
end
