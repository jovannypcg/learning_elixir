defmodule Multiples do
  @moduledoc """
  Solves the problem below:

  If we list all the natural numbers below 10 that are multiples of 3 or 5,
  we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
  """

  def exec(n \\ 0), do: exec(n, 0)

  def exec(1000, sum), do: sum
  def exec(n, sum) when (rem(n, 3) === 0) or (rem(n, 5) === 0), do: exec(n + 1, n + sum)
  def exec(n, sum), do: exec(n + 1, sum)
end

IO.puts Multiples.exec
