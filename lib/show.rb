#require_relative 'board'
#Ce fichier ne sert pas. Il devait contenir la méthode `show_board` mais impossible de 
#la faire marcher d'ici donc je l'ai remise dans `board.rb`
class Show
    attr_accessor :board

    def initialize
    end

def show_board(board)
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
end
