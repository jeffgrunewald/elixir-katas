defmodule BowlingGame do

  def get_score(string) do
      String.codepoints(string)
      |> Enum.find_index(equal_to("X"))
      |> Stream.map(&single_roll/1)
      |> Enum.sum
  end

  defp single_roll("-"), do: 0
  defp single_roll("X"), do: 10
  defp single_roll(string) do
      String.to_integer(string)
  end

  defp equal_to(elem) do
      fn(x) -> x == elem end
  end

end
