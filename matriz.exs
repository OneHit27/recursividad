defmodule Matriz do

  def suma_matriz(matriz) do
    suma_filas(matriz, 0)
  end

  # Caso base
  defp suma_filas([], acc), do: acc


  defp suma_filas([fila | resto], acc) do
    suma_filas(resto, acc + suma_fila(fila, 0))
  end

  # Suma recursiva
  defp suma_fila([], acc), do: acc
  defp suma_fila([h | t], acc), do: suma_fila(t, acc + h)
end
