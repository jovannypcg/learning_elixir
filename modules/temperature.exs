data = [
  %{
    :name => "Jamestown",
    :population => 2047,
    :temperatures => [-34, 67, 101, 87]
  },
  %{
    :name => "Awesome Town",
    :population => 3568,
    :temperatures => [-3, 4, 9, 12]
  },
  %{
    :name => "Funky Town",
    :population => 1000000,
    :temperatures => [1, 25, -12, 23, 14, 2]
  }
]

total = Enum.map(data, fn %{temperatures: temperatures, population: population} -> {temperatures, population}  end)
  |> Enum.map(fn {temperatures, population} -> { Enum.sum(temperatures), Enum.count(temperatures), population } end)
  |> Enum.map(fn {total, length, population} -> [total / length | population] end)

IO.inspect total
