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
  def initialize(name)
    @name = name
  end
end

contra_game = Game.new('Contra')

contra_game.instance_eval do
  self.owner = 'Alice'
end


puts contra_game.owner # Alice
puts contra_game.name  # Contra

contra_game.owner = "Bela"
puts contra_game.owner # Bela
