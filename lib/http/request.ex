defmodule OmnivaApi.Http.Request do
  alias OmnivaApi.Http.Base

  def get(url) do
    with {:ok, resp} <- Base.get(url),
         {:ok, body} <- resp.body do
      {:ok, body}
    else
      {:error, error} -> {:error, error}
    end
  end
end
