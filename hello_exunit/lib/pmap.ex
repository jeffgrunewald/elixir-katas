defmodule HelloExunit.PMap do
  def pmap(coll,fun) do
    Enum.map(coll, fun)
  end
end
