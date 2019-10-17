require_relative 'boardcase'

class Board
  attr_accessor :board
#ce fichier dessine la grille de jeu et défini chaque tour, ainsi que les conditions de victoire
  def initialize
  @board = [*0..8].map{|i| BoardCase.new(i).case_number}
  end

  def show_board
    puts "#{@board[0..2].join(" | ")}"
    puts "--|---|--"
    puts "#{@board[3..5].join(" | ")}"
    puts "--|---|--"
    puts "#{@board[6..9].join(" | ")}"
  end

  def play_turn(symbol)
    puts "Choisis la case à jouer :"
    print ">"
    case_number = gets.chomp().to_i
    @board = @board.each_index.map {|e| e == case_number && @board[e] != "X" && @board[e] != "O" ? @board[e] = symbol : @board[e]}
  end

  def victory?
    if (board[0] == board[1] && board[0]  == board[2] && board[0] != "") || (board[3] == board[4] && board[3] == board[5] && board[3] != "") || (board[6] == board[7] && board[6] == board[8] && board[6] != "") || (board[0] == board[3] && board[0] == board[6] && board[0] != "") || (board[1] == board[4] && board[1] == board[7] && board[1] != "") || (board[2] == board[5] && board[2] == board[8] && board[2] != "") || (board[0] == board[4] && board[0] == board[8] && board[0] != "") || (board[2] == board[4] && board[2] == board[6] && board[2] != "")
    return true
    else
    return false
    end
  end
end
