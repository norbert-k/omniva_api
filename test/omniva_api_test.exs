defmodule OmnivaApiTest do
  use ExUnit.Case
  doctest OmnivaApi

  test "greets the world" do
    assert OmnivaApi.hello() == :world
  end
end
