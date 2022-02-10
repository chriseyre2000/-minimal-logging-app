defmodule Tracker do
  use Agent

  def start_link(initial_value) do
    Agent.start_link(fn -> initial_value end, name: __MODULE__)
  end

  def value do
    Agent.get(__MODULE__, & &1)
  end

  def increment(url) do
    Agent.update(__MODULE__, &( &1 |> Map.update(url, 1, fn x -> x + 1 end) ) )
  end
end