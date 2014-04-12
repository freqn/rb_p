def greet
	yield
end


 def greet_specific_person(name)
 	puts "#{name} says #{yield}"
 end

 greet_specific_person("Joe"){"hello"}