class Greeter
	attr_accessor :name
	def initialize(name = "World")
		@name = name
	end
	def say_hi
		puts "Hi #{@name}!"
	end
	def say_bye
		puts "Bye #{@name}, come back soon."
	end
end

a = Greeter.new("Bob")
a.say_hi
a.name = "Keller"
puts a.name
puts a.respond_to?("name")
puts Greeter.instance_methods(false)