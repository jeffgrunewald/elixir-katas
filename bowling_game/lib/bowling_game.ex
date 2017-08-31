defmodule BowlingGame do

  def get_score(string) do
      String.codepoints(string)
      |> Stream.map(&single_roll/1)
      |> Enum.sum
  end

  defp single_roll("-"), do: 0
  defp single_roll(string) do
      String.to_integer(string)
  end

end
