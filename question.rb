class Question
  attr_accessor :solution, :answer

  def questions_function(player)
    randomised_numb = rand 1...4
    if randomised_numb <= 2
      ran_num1 = rand 1...20
      ran_num2 = rand 1...20
      @solution = ran_num1 + ran_num2
      puts "----- NEW TURN -----"
      print "#{player.name}: What is the sum of #{ran_num1} and #{ran_num2}?\n", ">"
      @answer = gets.chomp.to_i
 
    else
      ran_num1 = rand 21...22
      ran_num2 = rand 1...20
      @solution = ran_num1 - ran_num2
      puts "----- NEW TURN -----"
      print "#{player.name}:What is #{ran_num1} minus #{ran_num2}?\n"
      @answer = gets.chomp.to_i
    end
  end

  def check_answer()
    if answer != solution
      false
    else
      true
    end
  end

end
