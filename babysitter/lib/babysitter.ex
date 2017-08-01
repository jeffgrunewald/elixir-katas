defmodule Babysitter do

  def tally_earnings(start_time, end_time, bed_time), do: (end_time - start_time) * calc_rate(start_time, end_time, bed_time)

  defp calc_rate(start_time, end_time, bed_time) when end_time <= bed_time and end_time > 5, do: 12
  defp calc_rate(start_time, end_time, bed_time) when end_time > bed_time, do: 8
  defp calc_rate(start_time, end_time, bed_time) when end_time < 5, do: 16
end
