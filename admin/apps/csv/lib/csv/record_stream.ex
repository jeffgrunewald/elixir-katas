defmodule Csv.RecordStream do
  def new(device, headers: _headers, schema: _schema) do
    stream = device
    |> IO.stream(:line)
    |> Stream.map(&String.trim/1)
    |> Stream.map(&String.split(&1, ","))

    _headers = stream |> Enum.fetch!(0)

    {:ok, stream}
  end
end
