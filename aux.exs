defmodule ListFuncs do
	def reverse [h] do
		[h]
	end

	def reverse [h|t] do
		reverse(t) ++ [h]
	end

	def map list, fnc do
		map list, fnc, []
	end

	def map [h|t], fnc, acc do
		map t, fnc, acc ++ [fnc.(h)]
	end

	def map [], _fnc, acc do
		acc
	end
end

# x = (ListFuncs.reverse [1,2,3])
# IO.inspect x

out = (ListFuncs.map [1,2,3], fn(x) -> x*x end) |> ListFuncs.reverse
IO.inspect out