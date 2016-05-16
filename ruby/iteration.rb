def babyblock
	puts "Before block"
	yield
	puts "After block"
end

babyblock { puts "I'm in a babyblock!"}
#Release 1
cars = ["jaguar", "impala", "tesla", "fiat"]
great_works = { 
	"Iliad" => "Homer",
	"Harry Potter" => "J.K. Rowling",
	"The Scarlett Letter" => "Nathaniel Hawthorn",
	"1984" => "George Orwell",
	"Blink" => "Malcom Gladwell"
}

puts cars
cars.each {|car| puts "I drive a #{car}!"}
puts cars

puts great_works
great_works.each {|book, author| puts "I read #{book}, written by #{author}"}
puts great_works

puts cars
cars.map! do |car| car + " turbo" end
puts cars
#Release 2
#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
def deleter(ary)
	ary.delete_if {|car| car.length < 11}
end
puts deleter(cars)
#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
def filter(hsh)
	hsh.keep_if {|book| book == "Harry Potter"}
end
puts filter(great_works)
#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
def filterdos(ary2)
	ary2.keep_if {|car| car.include?("jaguar turbo") || car.include?("tesla turbo") || car.include?("impala turbo")}
end
puts filterdos(cars)
#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.
def remover(ary3)
	ary3.take_while {|car| car.length > 11}
end
puts remover(cars)