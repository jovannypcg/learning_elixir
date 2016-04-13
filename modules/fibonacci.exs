defmodule Fibonacci do
  @moduledoc """
  Provides functions to get the n fibonacci numbers.
  """

  @doc """
  Gets a list with the n fibonacci numbers.
  """
  def upto(n), do: Enum.map(0 .. n, &_exec/1)

  @doc """
  Calculates the n fibonacci number.
  Remember:
    F(0) = 0
    F(1) = 1
    F(n) = F(n - 1) + F(n - 2)
  """
  defp _exec(0), do: 0
  defp _exec(1), do: 1
  defp _exec(n) when n > 1, do: _exec(n - 1) + _exec(n - 2)
end
