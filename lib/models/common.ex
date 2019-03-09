defmodule OmnivaApi.Models.Common do
  def enum_each_new(raw_list, module) when is_list(raw_list) do
    raw_list
    |> Enum.map(fn data ->
      struct(module, data)
    end)
  end

  def clean_data(data) when is_list(data) do
    data
    |> Enum.map(fn x -> clean_data(x) end)
  end

  def clean_data(data) when is_map(data) do
    data
    |> Enum.map(fn {key, value} ->
      {String.downcase(key), value}
    end)
    |> Map.new(fn {key, value} ->
      {String.to_atom(key), value}
    end)
  end
end
