require 'pry'

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
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

end