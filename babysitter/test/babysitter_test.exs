defmodule BabysitterTest do
  use ExUnit.Case
  import Babysitter

  test "single hour" do
    assert 12 == tally_earnings(6, 7)
  end

  test "arbitrary number of hours" do
    assert 24 == tally_earnings(6, 8)
  end

  test "past midnight" do
    assert 84 == tally_earnings(7,2)
  end
end
