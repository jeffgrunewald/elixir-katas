defmodule BowlingGameTest do
  use ExUnit.Case
  import BowlingGame

  test("returns the value of a single roll") do
      assert 4 == get_score("4")
  end

  test("returns an arbitrary value of a single roll") do
      (1..9) |> Enum.each(fn x ->
          assert x == get_score(to_string x)
      end)
  end
end
