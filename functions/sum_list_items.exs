sum = fn
  ([]) -> 0
  ([head | tail]) -> sum.(tail, head)
  ([], total) -> total
  ([head | tail], total) -> sum.(tail, head + total)
end

empty_list = []
list = [1, 2, 3, 5, 6, 7, 8, 9]
