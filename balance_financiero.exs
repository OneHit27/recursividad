defmodule BalanceFinanciero do
  # Caso base
  def balance([]), do: 0

  # Caso recursivo
  def balance([a | b]), do: a + balance(b)

  def main do
    IO.puts("Balance financiero: #{balance([100, -50, 20])}")
  end
end

BalanceFinanciero.main()
