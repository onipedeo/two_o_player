require './Game.rb'
require './player.rb'
require './question.rb'

def main
print "What is first player's name?\n"
name1 = gets.chomp

print "What is second player's name?\n"
name2 = gets.chomp

player1 = Player.new(name1)
player2 = Player.new(name2)


game = Game.new(player1, player2, Question)
game.start()

end

main()