class Game
  attr_accessor :player_one, :player_two
  def initialize
    @question = Question.new
    @player_one = Player.new("player_one")
    @player_two = Player.new("player_two")
  end

  def start_game
    puts player_one.greeting, player_two.greeting
  end
end
