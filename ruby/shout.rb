module Shout
  def self.yell_angrily(words)
  	words + "!!!" + ":("
  end

  def self.yelling_happily(words)
  	words + ":D :D :D " + "Woohoooo!"
  end
end

#DRIVER CODE
p Shout.yell_angrily("Go away")
p Shout.yelling_happily("I did it!")


