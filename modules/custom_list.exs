defmodule CustomList do
  @moduledoc """
  Provides useful functions for handling lists.
  """

  @doc """
  Gets the lgnth of a list.
  """
  def size([]), do: 0
  def size([_head | tail]), do: 1 + size(tail)

  @doc """
  An 'Enum.map' simulation.
  """
  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  @doc """
  Makes the addition of all the items in the list.
  """
  def sum([]), do: 0
  def sum([head | tail]), do: sum(tail, head)
  def sum([], total), do: total
  def sum([head | tail], total), do: sum(tail, head + total)
end
