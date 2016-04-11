feed_request = %{
  :query => %{
    :match => %{
        :body => ["elixir", "elixir-lang", "fp"],
        :username => ["josevalim", "phoenixcom"]
    },
    :like => %{
      :body => %{
        :_ctn => ["iex", "exs", "ex"]
      }
    },
    :range => %{
      :posted_time => %{
        :_lte => "2016.04.12",
        :_gte => "2016.04.10"
      }
    }
  }
}
