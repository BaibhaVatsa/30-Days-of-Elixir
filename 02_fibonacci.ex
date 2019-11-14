# Output: Given n, prints the sequence for n terms

defmodule Day02 do
	def fibonacci(n) do
		case n do
			_ when n <= 0 -> 0
			1             -> 0
			2 						-> 1
			_ 						-> fibonacci(n - 1) + fibonacci(n - 2)
		end
	end
end

IO.puts Day02.fibonacci(2)

