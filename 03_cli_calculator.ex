# Objective: Accept user input and then if it is correct, print out the result. 
#            Else, throw error. Supported operations: +, -, *, /, ^, %. 
#            Supported complexity: op1 op op2

defmodule Day03 do
  def main do
    expr = IO.gets("> ") 
           |> String.trim 
           |> String.split

		cond do
      hd(expr) == "q" -> exit :shutdown
      length(expr) == 3 -> validate expr
      true -> IO.puts "Error: Invalid expression.\nSyntax: <operator1> <operand> <operator2>."
    end

    main
  end

  defp validate(expr) do
    operator = Enum.at expr, 1
    try do
      operand_1 = Enum.at(expr, 0) |> String.to_integer
      operand_2 = Enum.at(expr, 2) |> String.to_integer
      calculate(operator, operand_1, operand_2) |> IO.puts
    rescue
      ArgumentError -> IO.puts "Error: Invalid operand"
      ArithmeticError -> IO.puts "Error: Bad operand"
		end
  end

  defp calculate(operator, operand_1, operand_2) do
    case operator do
      "+" -> operand_1 + operand_2
      "-" -> operand_1 - operand_2
      "*" -> operand_1 * operand_2
      "/" -> div operand_1, operand_2
      "^" -> :math.pow operand_1, operand_2
      "%" -> rem operand_1, operand_2
    end	
  end
end

Day03.main()