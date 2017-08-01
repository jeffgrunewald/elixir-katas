defmodule Babysitter do

  def tally_earnings(start_time, end_time) do
    if end_time < start_time do
        ((12 - start_time) + end_time) * 12
    else
        (end_time - start_time) * 12
    end
  end
end
