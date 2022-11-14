class Game
  def initialize
    @question = Question.new
  end

  def start_game
    puts @question.question
  end
end
