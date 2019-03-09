defmodule OmnivaApi.Http.Base do
  use HTTPoison.Base

  def process_request_url(url) do
    "https://www.omniva.lv" <> url
  end

  def process_response_body(body) do
    body
    |> Jason.decode()
  end
end
