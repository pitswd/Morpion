require 'pry'

require_relative 'player'

class Game
    attr_accessor :current_player, :game_status, :board, :players_array
  
    def initialize
      #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
      @board = Board

    end

    def turn
      #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    end
  
    def new_round
      # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    end
  
    def game_end
      # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    end    
  
  end