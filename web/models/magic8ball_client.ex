defmodule Magic8ballClient do
  alias Magic8ballPhoenix.Router.Helpers

  def shake do
    magic8ball_url
    |> HTTPoison.get!
    |> handle_response
  end

  defp magic8ball_url do
    url = Helpers.root_url(Magic8ballPhoenix.Endpoint, :index) <> "magic8ball/api/shake"
  end

  defp handle_response(%HTTPoison.Response{status_code: 200, body: body}) do
    Poison.decode!(body)["answer"]
  end

  defp handle_response(%HTTPoison.Response{status_code: status_code}) do
    "The Magic8ball is not responding to requests right now (status: #{status_code})"
  end
end
