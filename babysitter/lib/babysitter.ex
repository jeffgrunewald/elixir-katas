defmodule Babysitter do
  @time_bound_start 5
  @time_bound_midnight 12
  @rate_postmidnight 16
  @rate_prebed 12
  @rate_premidnight 8

  def tally_earnings(start_time, end_time, bed_time) do      
      exclusive_range(transform_time(start_time), transform_time(end_time))
      |> Enum.map(fn hour -> calc_rate(hour, transform_time(bed_time)) end)
      |> Enum.sum
  end

  defp calc_rate(hour, _bed_time) when hour >= @time_bound_midnight, do: @rate_postmidnight
  defp calc_rate(hour, bed_time) when hour < bed_time, do: @rate_prebed
  defp calc_rate(hour, bed_time) when hour >= bed_time and hour <= @time_bound_midnight, do: @rate_premidnight

  defp transform_time(time) when time < @time_bound_start, do: time + @time_bound_midnight
  defp transform_time(time), do: time

  defp exclusive_range(start, stop), do: start..stop - 1
end
