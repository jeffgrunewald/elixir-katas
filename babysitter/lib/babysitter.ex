defmodule Babysitter do

  def tally_earnings(start_time, end_time) do
      calc_time_diff(start_time, end_time) |> mult_rate()
  end

  defp calc_time_diff(start_time, end_time) do
      if end_time < start_time do
          ((12 - start_time) + end_time)
      else
          (end_time - start_time)
      end
  end

  defp mult_rate(hours), do: hours * 12

end
