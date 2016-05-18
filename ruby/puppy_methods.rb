class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(intgr)
  	intgr.times {puts "Woof!"}
  end

  def roll_over
  	puts "*rolls over*"
  end

  #input: human years
  #output: dog years
  def dog_years(hum_age)
  	dog_age = hum_age * 7
  	puts "Your dog age is #{dog_age}"
  end

  def shake(name)
  	puts "Nice to meet you #{name}!"
  end

end


#DRIVER CODE
#initialize instance of puppy
spot = Puppy.new
#check that spot can fetch
spot.fetch("ball")
spot.speak(4)
spot.roll_over
spot.dog_years(5)
spot.shake("Alison")