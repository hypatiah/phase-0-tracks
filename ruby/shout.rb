# module Shout
#   def self.yell_angrily(words)
#   	words + "!!!" + ":("
#   end

#   def self.yelling_happily(words)
#   	words + ":D :D :D " + "Woohoooo!"
#   end
# end

# #DRIVER CODE
# p Shout.yell_angrily("Go away")
# p Shout.yelling_happily("I did it!")

module Shout
	def yell_sleepily(words)
		puts words + "!" + "...zzzz..."
	end

	def yell_underwater(words)
		puts words + "blub blub blub"
	end
end

class Sleepy_baby
	include Shout
end

class Octopus
	include Shout
end

#DRIVER CODE
bebe = Sleepy_baby.new
bebe.yell_sleepily("I want my milk")
bebe.yell_underwater("I like drinking milk")

squishy = Octopus.new
squishy.yell_sleepily("I'm ready for my water bed")
squishy.yell_underwater("Just keep swimming")


