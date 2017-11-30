defmodule BowlingGame do

  def get_score(string) do
      scores_list = String.codepoints(string)
      compound_special_rolls([], scores_list, &bonus_rolls/3)
      |> Stream.map(&single_roll/1)
      |> Enum.sum
  end

  defp single_roll("-"), do: 0
  defp single_roll("X"), do: 10
  defp single_roll(string) do
      String.to_integer(string)
  end

  defp compound_special_rolls(accum, [], _), do: accum
  defp compound_special_rolls(accum, [ head | tail ], func) do
      func.(accum, head, tail)
      |> compound_special_rolls(tail, func)
  end

  defp bonus_rolls(accum, head, []), do: accum ++ [head]
  defp bonus_rolls(accum, head, [foo]) do
      case head do
          "X" ->
            accum ++ [head] ++ [foo]
          _ ->
            accum ++ [head]
      end
  end
  defp bonus_rolls(accum, head, [foo, bar|_]) do
      case head do
          "X" ->
            accum ++ [head] ++ [foo, bar]
          _ -> accum ++ [head]
      end
  end

end