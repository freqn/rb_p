people = [
	{first_name: "Ann", last_name: "Smith"},
	{first_name: "Joe", last_name: "Stevens"},
	{first_name: "Al", last_name: "Jones"}

]
last_name = people.map { |person|person[:last_name] }
(1..500).map{ |n| puts n if n % 3 == 0 && n % 13 == 0}

print last_name.sort