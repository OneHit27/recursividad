defmodule Permutacion do

  def permutar(lista), do: permutar(lista, [], 0)

  # Caso base
  defp permutar([], acum, n) do
    IO.puts("Nivel #{n} -> #{inspect Enum.reverse(acum)}")
    [Enum.reverse(acum)]
  end

  # Caso recursivo
  defp permutar([h | t], acum, n) do
    IO.puts("Nivel #{n} -> tomando #{h}")
    for {elem, rest} <- separar([h | t]) do
      permutar(rest, [elem | acum], n + 1)
    end
    |> List.flatten()
  end

  # separar
  defp separar([]), do: []
  defp separar([h | t]) do
    [{h, t}] ++
      (for {x, r} <- separar(t), do: {x, [h | r]})
  end
end
