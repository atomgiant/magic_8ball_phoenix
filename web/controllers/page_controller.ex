defmodule Magic8ballPhoenix.PageController do
  use Magic8ballPhoenix.Web, :controller

  def index(conn, _params) do
    answer = Magic8ballClient.shake()

    conn
    |> assign(:answer, answer)
    |> render("index.html")
  end
end
