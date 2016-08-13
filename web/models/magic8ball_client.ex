defmodule Magic8ballClient do
  def shake(url) do
    HTTPoison.get!(url)
    |> handle_response
  end

  defp handle_response(%HTTPoison.Response{status_code: 200, body: body}) do
    Poison.decode!(body)["answer"]
  end

  defp handle_response(%HTTPoison.Response{status_code: status_code}) do
    "The Magic8ball is not responding to requests right now (status: #{status_code})"
  end
end
