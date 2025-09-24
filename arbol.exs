defmodule Arbol do
  def caminos(nil, _objetivo), do: []

  def caminos(arbol, objetivo), do: caminos(arbol, objetivo, [], 0)

  defp caminos(nil, _, _, _), do: []

  defp caminos(%{valor: v, izq: i, der: d}, objetivo, acum, n) do
    IO.puts("Nivel #{n} -> nodo #{v}")
    nuevo = [v | acum]
    cond do
      i == nil and d == nil and suma(nuevo) == objetivo ->
        [invertir(nuevo)]
      true ->
        caminos(i, objetivo, nuevo, n + 1) ++
        caminos(d, objetivo, nuevo, n + 1)
    end
  end

  # suma recursiva
  defp suma([]), do: 0
  defp suma([h | t]), do: h + suma(t)

  # invertir lista recursivamente
  defp invertir(lista), do: invertir(lista, [])
  defp invertir([], acc), do: acc
  defp invertir([h | t], acc), do: invertir(t, [h | acc])
end
