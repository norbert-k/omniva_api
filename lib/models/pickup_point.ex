defmodule OmnivaApi.Models.PickupPoint do
  defstruct [
    :zip,
    :name,
    :type,
    :a0_name,
    :a1_name,
    :a2_name,
    :a3_name,
    :a4_name,
    :a5_name,
    :a6_name,
    :a7_name,
    :a8_name,
    :x_coordinate,
    :y_coordinate,
    :service_hours,
    :temp_service_hours,
    :temp_service_hours_until,
    :temp_service_hours_2,
    :temp_service_hours_2_until,
    :comment_est,
    :comment_eng,
    :comment_rus,
    :comment_lav,
    :comment_lit,
    :modified
  ]

  def new(raw_map) when is_map(raw_map) do
    raw_map = raw_map
    |> parse_coordinates

    struct(__MODULE__, raw_map)
  end

  defp parse_coordinates(%{:x_coordinate => x, :y_coordinate => y} = raw_map) when is_map(raw_map) do
    raw_map
    |> Map.put(:x_coordinate, coordinate_to_float(x))
    |> Map.put(:y_coordinate, coordinate_to_float(y))
  end

  defp coordinate_to_float(coordinate) when is_bitstring(coordinate) do
    coordinate
    |> String.replace(" ", "")
    |> String.to_float()
  end
end
