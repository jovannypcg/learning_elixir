defmodule ListOperation do
  @moduledoc """
  Special operations for lists.
  """

  @doc """
  Makes the sum of the items of the list sent as argument.
  """
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  @doc """
  Generates a list based on the number sent as argument.

  if n = 10
  then generate(n) = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
  """
  def generate(0), do: []
  def generate(n) when n > 0, do: [n] ++ generate(n - 1)
end

# The square of a number.
square = fn item -> item * item end

n = 10

sum_of_squares = ListOperation.generate(n)
  |> Enum.reverse
  |> Enum.map(square)
  |> ListOperation.sum

IO.puts sum_of_squares
