class Game
  attr_accessor :current_player, :counter, :player1, :player2, :counter

  def initialize(player1, player2, question)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
    @second_player = @player2
    @counter = 1
  end

  def toggle_turn
    if @counter % 2 == 0
      @current_player = @player1
    else
      @current_player = @player2
    end
  end


  def start
    puts "Welcome to the Game!", "Player 1 is #{@player1.name}, and Player 2 is #{@player2.name}"

    while @current_player.life >= 1 
      if player1.life == 0 || player2.life == 0

        puts "----- GAME OVER -----", "Good bye!"
        return
      else
        question = Question.new
        question.questions_function(current_player)
        answer_check = question.check_answer()
        if answer_check == false
          puts "#{@current_player.name}: Seriously? No!"
          @current_player.decrease_life()
          puts "#{@player1.name}: #{@player1.life}/#{player1.initial_life} vs #{player2.name}: #{player2.life}/#{player2.initial_life}"
          else
          puts "#{@current_player.name}: YES! you are correct!"
          puts "#{@player1.name}: #{@player1.life}/#{player1.initial_life} vs #{player2.name}: #{@player2.life}/#{player2.initial_life}"
          end
        current_player = self.toggle_turn()
        @counter += 1
      end
    end

  end
end
