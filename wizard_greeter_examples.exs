defmodule WizardGreeter do
	# def greet do
	# 	"Yer a wizard, Harry!"
	# end

	# def greet(name) do
	# 	"Yer a wizard, #{name}!"
	# end

	# OR use default arguments

	# def greet(names) when is_list(names) do
	# 	names
	# 	|> Enum.map(fn name -> greet(name) end)
	# 	|> Enum.join("\n")
	# end

	# def greet(name \\ "Harry") do
	# 	"Yer a wizard, #{name}!"
	# end

	# NOTE: totally fixed w/ header, no owl implemented
	# def greet name \\ "Harry"
	
	# def greet(names) when is_list names do
	# 	greet_wizards(names, "")
	# end

	# defp greet_wizards([], greeting), do: String.trim greeting


	# defp greet_wizards([wizard | rest], greeting) do
	# 	greet_wizards(rest, "#{greeting}\n#{greet(wizard)}")
	# end

	# def greet name do
	# 	"Yer a wizard, #{name}!"
	# end

	
	# NOTE: enum approach to multi-greeting, with pipe explanation
	# def greet(names) when is_list(names) do
	# 	Enum.join(Enum.map(names, fn name -> greet(name) end), "\n")

	# 	greetings = Enum.map(names, fn name -> greet(name) end)
	# 	Enum.join(greetings,"\n")

	# 	names
	# 	# |> Enum.map(fn name -> greet(name) end)
	# 	|> Enum.map(&(greet(&1)))
	# 	|> Enum.join("\n")
	# end

	# NOTE: implementing owl greeting
	@spec greet(String.t, atom) :: String.t
	def greet(name \\ "Harry", greeter \\ :hagrid)
	
	@spec greet(list, atom) :: String.t
	def greet(names, greeter) when is_list names do
		greet_wizards(names, "", greeter)
	end

	def greet(name, :hagrid) do
		"Yer a wizard, #{name}!"
	end

	def greet(name, :owl) do
		"Welcome to Hogwarts, #{name}!"
	end

	@spec greet_wizards(list, String.t, atom) :: String.t
	defp greet_wizards([], greeting, _), do: String.trim greeting
	
	defp greet_wizards([wizard | rest], greeting, greeter) do
		new_greeting = "#{greeting}\n#{greet(wizard, greeter)}"
		greet_wizards(rest, new_greeting, greeter)
	end
end