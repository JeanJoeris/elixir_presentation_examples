Code.load_file("wizard_greeter.exs", __DIR__)

ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule WizardGreeterTest do
  use ExUnit.Case

  describe "Hagrid greets a new wizards by default" do
  	# @tag :pending
  	test "and Harry is the default wizard" do
  		expectation = "Yer a wizard, Harry!"
  		assert WizardGreeter.greet == expectation
  	end

  	@tag :pending
  	test "and he greets a specific wizard" do
  		expectation = "Yer a wizard, Hermione!"
  		assert WizardGreeter.greet("Hermione") == expectation
  	end

  	@tag :pending
  	test "and he greets all the wizards" do
  		names = ["Harry", "Ron", "Hermione"]
  		expecation = """
				Yer a wizard, Harry!
				Yer a wizard, Ron!
				Yer a wizard, Hermione!
  		""" |> String.trim

  		assert WizardGreeter.greet(names) == expecation
  	end
  end

  describe "An owl brings bland greeting" do
  	@tag :pending
  	test "and Harry is welcomed to Hogwarts" do
  		expectation = "Welcome to Hogwarts, Harry!"
  		assert WizardGreeter.greet("Harry", :owl) == expectation
  	end

  	@tag :pending
  	test "and they are all welcomed to Hogwarts" do
  		names = ["Harry", "Ron", "Hermione"]
  		expecation = """
				Welcome to Hogwarts, Harry!
				Welcome to Hogwarts, Ron!
				Welcome to Hogwarts, Hermione!
  		""" |> String.trim

  		assert WizardGreeter.greet(names, :owl) == expecation
  	end
  end
end
