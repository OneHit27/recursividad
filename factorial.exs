defmodule Factorial do
  # Caso base
  def factorial(0), do: 1

  # Control de error
  def factorial(n) when n < 0, do: "No existe el factorial de negativos"

  # Caso recursivo
  def factorial(n), do: n * factorial(n - 1)

  def main do
    IO.puts("Factorial de 5: #{factorial(4)}")
    IO.puts("Factorial de -3: #{factorial(-3)}")
  end
end

Factorial.main()
