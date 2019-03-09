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
    struct(__MODULE__, raw_map)
  end
end
