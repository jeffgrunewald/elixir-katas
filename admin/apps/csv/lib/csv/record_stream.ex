defmodule Csv.RecordStream do
  def new(device, headers: headers, schema: schema) do
    stream = device
    |> IO.stream(:line)
    |> Stream.map(&String.trim/1)
    |> Stream.map(&String.split(&1, ","))
    |> Stream.map(fn(row) ->
      contents = headers
      |> Enum.zip(row)
      |> Enum.into(%{})

      struct(schema, contents)
    end)

    _headers = stream |> Enum.fetch!(0)

    {:ok, stream}
  end
end
