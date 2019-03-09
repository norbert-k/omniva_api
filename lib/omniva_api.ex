defmodule OmnivaApi do
  @moduledoc """
  Documentation for OmnivaApi.
  """

  alias OmnivaApi.Http.Request
  alias OmnivaApi.Models.PickupPoint
  alias OmnivaApi.Models.Common

  def get_pickup_points() do
    case Request.get("/locations.json") do
      {:ok, data} ->
        data
        |> Common.clean_data()
        |> Common.enum_each_new(PickupPoint)

      {:error, error} ->
        {:error, error}
    end
  end
end
