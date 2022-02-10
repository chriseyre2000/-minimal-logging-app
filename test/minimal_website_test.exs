defmodule MinimalWebsiteTest do
  use ExUnit.Case
  doctest MinimalWebsite

  test "greets the world" do
    assert MinimalWebsite.hello() == :world
  end
end
