# Objective: Accept user input and then if it is correct, print out the result. Else, throw error. Supported operations: +, -, *, /, ^, %. Supported complexity: op1 op op2

defmodule Day03 do
	def main do
		expr = IO.gets("> ") |> String.trim() |> String.split()
		
		cond do
			length(expr) == 3 -> expr
			true -> IO.puts :stderr, "Error: Invalid expression"
		end
		|> parse_and_calculate()
		|> IO.puts()
		
		main()
	end

	def parse_and_calculate(expr_list) do
		operator = Enum.at expr_list, 1
	  operand_1 = Enum.at(expr_list, 0)|> String.to_integer()
	  operand_2 = Enum.at(expr_list, 2)|> String.to_integer()	
		
		case operator do
			"+" -> operand_1 + operand_2
			"-" -> operand_1 - operand_2
			"*" -> operand_1 * operand_2
			"/" -> div operand_1, operand_2
			"^" -> :math.pow(operand_1, operand_2) |> round()
			"%" -> rem operand_1, operand_2
		end	
	end
end

Day03.main()
 
