defmodule Babysitter do

  def tally_earnings(start_time, end_time) do
    (end_time - start_time) * 12
  end
end
