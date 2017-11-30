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

  test("return 0 when a '-' is supplied") do
      assert 0 == get_score("-")
  end

  test("return 10 when a 'X' is supplied") do
      assert 10 == get_score("X")
  end

  test("returns sum of two when two rolls are passed") do
      assert 9 == get_score("45")
  end

  test "returns only one number when a bunch of gutters are thrown" do
      assert 2 == get_score("-2-")
  end

  test "returns sum of 18 when a strike and a 4 are rolled" do
      assert 18 == get_score("X4")
  end

  test "returns sum of 22 when a strike is followed by a 4 and a 2" do
      assert 22 == get_score("X42")
  end
end
