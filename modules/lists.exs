defmodule Lists do
  def size([]), do: 0
  def size([_ | tail]), do: 1 + size(tail)
end
