fuzzy_buzz = fn
  0, 0, _ -> "FuzzyBuzz"
  0, _, _ -> "Fuzzy"
  _, 0, _ -> "Buzz"
  _, _, x -> x
end

IO.puts fuzzy_buzz.(0, 1, 2)
IO.puts fuzzy_buzz.('x', 1, true)
IO.puts fuzzy_buzz.(0, 0, false)
IO.puts fuzzy_buzz.(1, 0, 1)
