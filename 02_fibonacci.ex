# Output: Given n, returns the nth fibonacci number

defmodule Day02 do
	def fibonacci(n) when n <= 0, do: raise "n must be > 0"
	def fibonacci(1), do: 0
	def fibonacci(2), do: 1
	def fibonacci(n), do: fibonacci(n - 1) + fibonacci(n - 2)
end

IO.puts Day02.fibonacci(14)