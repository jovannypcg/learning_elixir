defmodule Fibonacci do
  def of(0), do: 0
  def of(1), do: 1
  def of(n) when n > 1, do: of(n - 1) + of(n - 2)

  def get_reverse_list_numbers(0), do: [0]
  def get_reverse_list_numbers(n) when n > 0 do
    [of(n) | get_reverse_list_numbers(n - 1)]
  end
end

fibonacci_numbers = Fibonacci.get_reverse_list_numbers(15)
  |> Enum.reverse
  |> Enum.map(fn number -> IO.puts number end)
