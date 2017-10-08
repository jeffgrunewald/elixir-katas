defmodule HelloExunitTest do
  use ExUnit.Case
  import HelloExunit.PMap

  test "pmap maps a list" do
    assert [2,4,6] = pmap([1,2,3], fn x -> x * 2 end)
  end

  test "pmap spawns async tasks" do
    pmap([1,2,3], fn x -> x * 2 end)

    assert_received({pid1, :ok})
    assert_received({pid2, :ok})
    assert_received({pid3, :ok})
    refute pid1 == pid2
    refute pid1 == pid3
    refute pid2 == pid3
  end
end
