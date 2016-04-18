defmodule CliTest do
  use ExUnit.Case

  import Issues.CLI, only: [parse_args: 1]

  test ":help returned by option parsing with -h and --help options" do
    assert parse_args(["-h", "anything"]) == :help
    assert parse_args(["--help", "anything"]) == :help
  end

  test "three values returned if three given" do
    assert parse_args(["jovannypcg", "learning_elixir", "99"]) == { "jovannypcg", "learning_elixir", 99 }
  end

  test "count is defaulted if two values given" do
    assert parse_args(["jovannypcg", "learning_elixir"]) == { "jovannypcg", "learning_elixir", 4 }
  end
end
