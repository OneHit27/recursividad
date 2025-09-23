defmodule ContarLista do
  # Caso base
  def contar([]), do: 0

  # Caso recursivo
  def contar([_ | a]), do: 1 + contar(a)

  def main do
    IO.puts("Elementos en la lista: #{contar([1,2,3,4])}")
  end
end

ContarLista.main()
