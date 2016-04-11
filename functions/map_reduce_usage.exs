username = "@john"

tweets = [
    "Hey @john what is your name again?",
    "Trying to keep alive! =(",
    "@john do you remember when we were at high school?",
    "@thedevilwearsprada... the best band ever!!",
    "Goats on a boat! Great hit! Listen to it, @john"
]

Enum.map(tweets, fn tweet -> String.split(tweet, " ") end)
  |> List.flatten
  |> Enum.filter(fn word -> word === username end)
  |> Enum.reduce(0, fn _, acc -> acc + 1 end)
  |> IO.inspect
