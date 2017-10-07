defmodule HelloExunitTest do
  use ExUnit.Case
  import HelloExunit.PMap

  test "pmap maps a list" do
    assert [2,4,6] = pmap([1,2,3], fn x -> x * 2 end)
  end

end
