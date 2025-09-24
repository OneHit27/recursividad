defmodule Ejercicios do
  # 4. Buscar un elemento en una lista
  def buscar(_elem, []), do: false
  def buscar(elem, [elem | _resto]), do: true
  def buscar(elem, [_otro | resto]), do: buscar(elem, resto)

  # 5. Reservas de hotel (sumar días)
  def suma_dias_reservados([]), do: 0
  def suma_dias_reservados([%{dias: dias} | resto]) do
    dias + suma_dias_reservados(resto)
  end

  # 6. Potencia de un número
  def calcular_exponente(_base, 0), do: 1
  def calcular_exponente(base, exponente) do
    base * calcular_exponente(base, exponente - 1)
  end

  # 7. Sumar solo los números pares de una lista
  def suma_pares([]), do: 0
  def suma_pares([num | resto]) when rem(num, 2) == 0 do
    num + suma_pares(resto)
  end
  def suma_pares([_num | resto]) do
    suma_pares(resto)
  end

  # 8. Pedidos de una tienda (sumar cantidades)
  def contar_cantidad([]), do: 0
  def contar_cantidad([pedido | resto]) do
    pedido[:cantidad] + contar_cantidad(resto)
  end
end

# -------------------
# DATOS DE PRUEBA
# -------------------

# 4. Buscar un elemento
IO.puts("Buscar en lista:")
IO.inspect(Ejercicios.buscar(3, [1, 2, 3, 4]))   # true
IO.inspect(Ejercicios.buscar(5, [1, 2, 3, 4]))   # false

# 5. Reservas de hotel
reservas = [
  %{cliente: "Ana", dias: 2},
  %{cliente: "Luis", dias: 5},
  %{cliente: "Marta", dias: 3}
]
IO.puts("\nReservas de hotel:")
IO.inspect(Ejercicios.suma_dias_reservados(reservas)) # 10

# 6. Potencia
IO.puts("\nPotencia de un número:")
IO.inspect(Ejercicios.calcular_exponente(2, 3))  # 8
IO.inspect(Ejercicios.calcular_exponente(5, 0))  # 1

# 7. Suma de pares
IO.puts("\nSuma de pares:")
IO.inspect(Ejercicios.suma_pares([1, 2, 3, 4, 5, 6])) # 12

# 8. Pedidos de una tienda
pedidos = [
  %{producto: "Manzanas", cantidad: 3},
  %{producto: "Peras", cantidad: 5},
  %{producto: "Bananas", cantidad: 2}
]
IO.puts("\nPedidos de la tienda:")
IO.inspect(Ejercicios.contar_cantidad(pedidos)) # 10
