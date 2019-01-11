=begin
	
rescue Exception => e
if I want to add class from another file, I use	
require_relative "./board"


require_relative "./PlayerAI"
require_relative "./BoardManage"
=end
class Main

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
 
	def start ()
        puts "\n >> PLEASE SEE THE POSITIONS OF THE BOARD << \n\n"

        print "Choose your opponent:\n1. random\n2. minmax\n3. minmax w/ ab-pruning\n4. h-minmax w/ ab-pruning"
        AItype = gets.chomp
        self.AI = self.initialize_AI_player(AItype)

        print "Choose your game:\n1. 3x3x3\n2. 3x5x3\n3. 6x7x4"
        boardsize = gets.chomp
        self.board = self.initialize_board(boardsize)

        print"alright, how many in a line (any direction) should one be considered winning? (do not be bigger than height or width) "
        boardWinCount = gets.chomp
        puts boardWinCount
        
	end

    def initialize_board(self, board_type):
        if board_type == '1':
          print('3x3x3 Board initialized')
          return Board(3,3,3)
        elseif board_type == '2':
          print('3x5x3 Board initialized')
          return Board(3,5,3)
        elseif board_type == '3':
          print('6x7x4 Board initialized')
          return Board(6,7,4)
        else:
          raise Exception('Unknown board type')
    end

    def initialize_AI_player(self, opponent_type):
        if opponent_type == '1':
          print('Random player initialized')
          return RandomPlayer('X')
        elif opponent_type == '2':
          print('Minmax player initialized')
          return MinmaxPlayer('X')
        elif opponent_type == '3':
          print('Minmax player w/ ab pruning initialized')
          return MinmaxAbPlayer('X')
        elif opponent_type == '4':
          print("This player uses iterative deepening (time boxed to 30 seconds).")
          start_depth = input("Choose starting depth (4): ")
          start_depth = int(start_depth) if start_depth else 4

          print(f"H-Minmax player w/ ab pruning initialized with initial search depth of {start_depth}")
          return HMinmaxAbPlayer('X', start_depth)
        else:
          raise Exception('Unknown player type')
    end

    sthnew = Main.new
    sthnew.display_info
    sthnew.start
=begin
x_player = Player.new("X")
o_player = Player.new("O") # This is a robot :)
boardmanage= BoardManage.new
boardmanage.display_positions
=end


end
