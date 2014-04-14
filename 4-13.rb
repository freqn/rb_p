class Rack

	def counted(num)
		(1..num).each{ |x| puts x if x % 13 == 0}
	end

	def gather
		puts "Enter a number"
		@number = gets
		puts @number
	end
end

case1 = Rack.new
case1.gather