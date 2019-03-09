defmodule OmnivaApi.Http.Request do
  alias OmnivaApi.Http.Base

  def get(url) do
    with {:ok, resp} <- Base.get(url),
         {:ok, _status_code} <- check_status_code(resp),
         {:ok, body} <- resp.body do
      {:ok, body}
    else
      {:error, error} -> {:error, error}
    end
  end

  defp check_status_code(resp) do
    case resp.status_code do
      200 -> {:ok, resp.status_code}
      _ -> {:error, resp.status_code}
    end
  end
end
