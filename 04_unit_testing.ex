# Objective: Try out ExUnit for unit testing

ExUnit.start

defmodule Day04 do
	use ExUnit.Case, async: true

    test "assert", do: assert 1 + 1 == 3, "2 != 3"

    test "assert_delta", do: assert_in_delta 1.5, 3.5, 2.0, "3.5 - 1.5 != 2.0"

    test "assert_raise", do: assert_raise ArithmeticError, fn -> 1 + "test" end

    test "assert_receive" do
        send self, :bye
        assert_receive :bye, 0, "oh hi"
    end

    test "assert_received" do
        send self, :bye
        assert_received :hello, "guess it is a bye"
    end
        
    test "catch_error_throw", do: assert catch_error(throw 1) == 1

    test "catch_error_raise", do: assert catch_error(raise "fails") == %RuntimeError{message: "fails"}

    test "catch_exit", do: assert catch_exit(exit 1) == 1 

    test "catch_throw", do: assert catch_throw(throw 1) == 1

    test "flunk", do: flunk "failed successfully!"

    test "refute", do: refute 1 + 1 == 3, "2 == 3" 

    test "refute_delta", do: refute_in_delta 1.5, 2.5, 3.5, "2.5 - 1.5 == 3.5"
        
    test "refute_receive" do
        send self, :hi
        refute_receive :bye, 1000, "goodbye"
    end

    test "refute_received" do
        send self, 56
        refute_received 56, "received 56"
    end
end