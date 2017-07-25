defmodule BabysitterTest do
  use ExUnit.Case
  import Babysitter

  test "single hour" do
    assert 12 == tally_earnings(6, 1)
  end

  test "arbitrary number of hours" do
    assert 24 == tally_earnings(6, 2)
  end

  test "" do

  end
end
