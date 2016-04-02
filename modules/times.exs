defmodule Times do
  def double(n) do
    n * 2
  end

  def greet(greeting, name), do: (
    IO.puts greeting
    IO.puts "Hi, #{name}!"
  )

  def triple(n), do: n * 3 end
end
