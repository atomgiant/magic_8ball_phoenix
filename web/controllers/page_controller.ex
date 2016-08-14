defmodule Magic8ballPhoenix.PageController do
  use Magic8ballPhoenix.Web, :controller

  def index(conn, _params) do
    url = Magic8ballPhoenix.Router.Helpers.root_url(Magic8ballPhoenix.Endpoint, :index) <> "magic8ball/api/shake"
    answer = Magic8ballClient.shake(url)

    conn
    |> assign(:answer, answer)
    |> render("index.html")
  end
end
