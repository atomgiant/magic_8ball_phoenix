defmodule Magic8ballPhoenix.PageController do
  use Magic8ballPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
