=begin
	
rescue Exception => e
if I want to add class from another file, I use	
require_relative "./board"
=end

require_relative "./PlayerAI"
require_relative "./BoardManage"

class Main

  POSITION = %w[1 2 3 4 5 6 7 8 9]
  INFO = <<Doc

************************************************************************
                I hope I can get this job position. 
                Sometimes I question myself the meaning of life
                Code in desperate starting 01/07/2019 1:00AM
************************************************************************

Doc

	def display_info
    puts INFO
	end
 
	def start(x_player, o_player, board)
    puts "\n >> PLEASE SEE THE POSITIONS OF THE BOARD << \n\n"

    print "Type what the board will look like start with the width: "
    boardwidth = gets.chomp
    puts boardwidth

    print "Then, tell me what the height of the board would be: "
    boardheight = gets.chomp
    puts boardheight

    print "Finally, do you want your AI to be a moron or a guru? (type as it is please)"
    aitype = gets.chomp
    puts aitype
	end

main = Engine.new
main.display_info
=begin
x_player = Player.new("X")
o_player = Player.new("O") # This is a robot :)
=end
boardmanage    = BoardManage.new
boardmanage.display_positions

engine.start(x_player, o_player, board) # this will start game and
                                        # automatically terminate the game if player wins the game
engine.stop # if match is draw
