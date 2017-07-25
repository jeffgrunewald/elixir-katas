defmodule BabysitterTest do
  use ExUnit.Case
  import Babysitter

  test "single hour" do
    assert 12 == tally_earnings()
  end
end
