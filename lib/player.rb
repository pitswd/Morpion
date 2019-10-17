require "pry"
#fichier permettant de définir les joueurs par leur nom et leur symbol, appelé ensuite dans `game.rb`
class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
end
