# Objective: Try out ExUnit for unit testing

ExUnit.start()

defmodule Day04 do
	use ExUnit.Case, async: true

    test "assert", do: assert 1 + 1 == 3, "2 != 3"

    test "assert_delta", do: assert_in_delta 1.5, 3.5, 2.0, "3.5 - 1.5 != 2.0"

    test "assert_raise", do: assert_raise ArithmeticError, fn -> 1 + "test" end

    # test "assert_receive" do
    
    # test "assert_received" do
        
    # test "catch_error" do

    # test "catch_exit" do 

    # test "catch_throw" do

    test "flunk", do: flunk "failed successfully!"

    test "refute", do: refute 1 + 1 == 3, "2 == 3" 

    test "refute_delta", do: refute_in_delta 1.5, 2.5, 3.5, "2.5 - 1.5 == 3.5"
        
    # test "refute_receive" do

    # test "refute_received" do
end