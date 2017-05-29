# class Game
#   # "I am inside the Game class."
#   puts "I am inside the #{self} class."
# end
#
#
#
# Game.class_eval do
#   # here self is a Game class
#   def self.find_by_owner(name)
#   end
# end


class Game
  attr_accessor :name, :owner
  def initialize(name,owner)
    @name = name
    @owner = owner
  end
end

contra_game = Game.new('Contra', "jozsi")
puts contra_game.name  # Contra
puts contra_game.owner  # jozsi

contra_game.instance_eval do
  self.owner = 'Alice'
end


puts contra_game.owner # Alice

contra_game.owner = "Bela"
puts contra_game.owner # Bela

class Tweet
  def say_hi
    puts "Hi"
  end
end
