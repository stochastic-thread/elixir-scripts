defmodule Smile do
	def scream do
		IO.inspect fn() -> 2 end
	end
end

Smile.scream