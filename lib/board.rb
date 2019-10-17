require_relative 'boardcase'

class Board
  attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3, :board

  def initialize
      @a1 = BoardCase.new
      @a2 = BoardCase.new
      @a3 = BoardCase.new
      @b1 = BoardCase.new
      @b2 = BoardCase.new
      @b3 = BoardCase.new
      @c1 = BoardCase.new
      @c2 = BoardCase.new
      @c3 = BoardCase.new
      @board = [@a1.value, @b1.value, @c1.value, @a2.value, @b2.value, @c2.value, @a3.value, @b3.value, @c3.value]
  end

  def play_turn 
    empty_case = true

    while empty_case
    puts "Quel case veux tu jouer ?"
    case_played = gets.chomp

    case currently_played
      when "a1"
        if @board[0].value == " "
          @board[0].value = 1
        else
          puts "case deja prise"
        end
      when "a2"
        if @board[0].value == " "
          @board[0].value = 1
        else
          puts "case deja prise"
        end
      else
        puts "case non existante"
      end
    end
   end
end
