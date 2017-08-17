defmodule BabysitterTest do
  use ExUnit.Case
  import Babysitter

  test "single hour" do
      assert 12 == tally_earnings(6, 7, 8)
  end

  test "arbitrary number of hours" do
      assert 24 == tally_earnings(6, 8, 8)
  end

  test "one hour after bedtime" do
      assert 8 == tally_earnings(9, 10, 8)
  end

  test "one hour after midnight" do
      assert 16 == tally_earnings(1, 2, 8)
  end

  test "one hour starting at midnight" do
      assert 16 == tally_earnings(12, 1, 8)
  end

  test "bed time after midnight for one hour" do
      assert 16 == tally_earnings(1, 2, 2)
  end

  test "time crosses bedtime" do
      assert 20 == tally_earnings(7, 9, 8)
  end

  test "time crosses all three pay bands" do
      assert 60 == tally_earnings(7,1,8)
  end

end
