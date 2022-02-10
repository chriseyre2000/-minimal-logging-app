defmodule MinimalAppRouter do
  use Plug.Router

  plug :match
  plug :dispatch
  get "/hello" do
    send_resp(conn, 200, "This is a test...")
  end
  match _ do
    send_resp(conn, 404, "Wrong place mate")
  end
end
