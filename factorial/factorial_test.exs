Code.load_file("factorial.exs", __DIR__)

ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule FactorialTest do
  use ExUnit.Case

  describe "factorial of" do
  	# @tag :pending
  	test "0 is 1" do
  		assert Factorial.of(0) == 1
  	end

  	# @tag :pending
  	test "1 is 1" do
		  assert Factorial.of(1) == 1
  	end

  	# @tag :pending
  	test "3 is 6" do
  		assert Factorial.of(3) == 6
  	end

    # @tag :pending
    test "a large number is correct" do
      assert Factorial.of(10) == 3628800
    end
  end
end