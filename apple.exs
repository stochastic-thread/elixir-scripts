defmodule Apple do
  def out(ls) do
    IO.puts "This is #{ls}"
  end
end

Apple.out(Enum.to_list(9..1000))