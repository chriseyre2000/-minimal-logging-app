defmodule MinimalAppRouter do
  use Plug.Router

  plug :match
  plug :dispatch
  get "/tracker" do
    send_resp(conn, 200, "#{(for {k, v} <- Tracker.value, do: "#{k}:#{v}") |> Enum.join("\n")}")
  end
  match _ do
    Tracker.increment(conn.request_path)
    send_resp(conn, 404, "Wrong place mate")
  end
end
