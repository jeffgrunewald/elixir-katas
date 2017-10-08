defmodule HelloExunitTest do
  use ExUnit.Case
  import HelloExunit.PMap

  setup _context do
    {:ok, [in_list: [1,2,3],
           out_list: [2,4,6]]}
  end

  test "pmap maps a list", context do
    assert context[:out_list] == pmap(context[:in_list], fn x -> x * 2 end)
  end

  test "pmap spawns async tasks", context do
    pmap(context[:in_list], fn x -> x * 2 end)

    assert_received({pid1, :ok})
    assert_received({pid2, :ok})
    assert_received({pid3, :ok})
    refute pid1 == pid2
    refute pid1 == pid3
    refute pid2 == pid3
  end
end
