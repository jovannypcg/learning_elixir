defmodule FizzBuzz do
  def upto(n) when n > 0, do: 1 .. n |> Enum.map(&_fizzbuzz/1)

  defp _fizzbuzz(n) when rem(n, 3) == 0 and rem(n, 5) == 0, do: "FizzBuzz"
  defp _fizzbuzz(n) when rem(n, 3) == 0, do: "Fizz"
  defp _fizzbuzz(n) when rem(n, 5) == 0, do: "Buzz"
  defp _fizzbuzz(n), do: n
end
