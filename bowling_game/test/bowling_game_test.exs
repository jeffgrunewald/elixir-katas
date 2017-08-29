defmodule BowlingGameTest do
  use ExUnit.Case
  import BowlingGame

  test "returns the value of a single roll" do
      assert 4 == get_score("4")
  end
end
