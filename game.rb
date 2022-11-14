class Game
  attr_accessor :player_one, :player_two
  def initialize
    @question
    @player_one = Player.new("Player_one")
    @player_two = Player.new("Player_two")
    @turn = 0
    @current_player
    @opponent
  end

  def greetings
    puts "------- HELLO! --------"
    puts player_one.greeting, player_two.greeting
    puts "------- LET'S START --------"
  end

  def whos_turn
    @turn += 1

    if @turn.odd? 
      @current_player = player_one
      @opponent = player_two
    else
      @current_player = player_two
      @opponent = player_one
    end

    @question = Question.new

    puts "#{@current_player.name} #{@question.question}"
    print "> "

    answer = gets.chomp.to_i

      

    if answer == @question.answer
      puts "#{@current_player.name}: YES! You are correct."
    else
      puts "#{@current_player.name}: Seriously? No!"
      @current_player.loss
    end
    puts "#{@current_player.name}: #{@current_player.lives}/3 vs #{@opponent.name}: #{@opponent.lives}/3 "
      

    if @current_player.over
      end_game
    else 
      puts "------- NEXT TURN --------"
      whos_turn
    end
  end

  def end_game
    puts "------- GAME OVER! --------"
    puts "#{@opponent.name} wins with a score of #{@opponent.lives}/3"
    exit()
  end

  def start_game
    greetings
    whos_turn
  end
  
end
