defmodule Recursion do
  def print_multiple_times(msg, n) when n <= 1 do
    IO.puts msg
  end

  def print_multiple_times(msg, n) do
    IO.puts msg
    print_multiple_times(msg, n-1)
  end

  def sum_list([h|t], acc) do
    sum_list(t, h+acc)
  end

  def sum_list([], acc) do
    IO.inspect acc
  end

end

# Recursion.print_multiple_times("hello", 5)
Recursion.sum_list(Enum.to_list(1..100), 0)