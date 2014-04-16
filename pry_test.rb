require 'pry'

class A
	def hello() puts "Hello world!" end
end

a = A.new

x = 10

# start a REPL session
binding.pry

# program resumes her (after pry session)
put "program resumes here. Value of x is: #{x}."