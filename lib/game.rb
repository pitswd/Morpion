#ce fichier contient tout le déroulement du jeu 

require 'pry'

class Game
  attr_accessor :current_player, :game_status, :board, :players_array
  
    def initialize #Méthode pour poser les instances et démarrer le jeu
      puts "_"*30
      puts "Bienvenue dans le morpion ! "
      puts "Chui sur t'as jamais joué à un jeu aussi coolos 😎"
      puts "C'est un morpion pour les dur.es, je vous laisse pas choisir votre symbole, déso les boloss."
      puts "_"*30
      puts " "
      puts "Joueur 1, choisis ton nom. Ton symbole sera le X."
      print ">"
      name1 = gets.chomp
      @player1 = Player.new(name1, "X")

      puts "Joueur 2, choisis ton nom. Ton symbole sera le O."
      print ">"
      name2 = gets.chomp
      @player2 = Player.new(name2, "O")

      @players_array = [@player1, @player2]
      @game_status = 'On going'
      @board = Board.new
      @current_player = @player1
      puts "C'est à #{@current_player.name} de commencer. Go go go !"
    end


    def till_victory #détermine la fin de la partie via la méthode victory? présente dans `board.rb`
        while @board.victory? == false
            self.turn
        end
    end

    def switch_players #permet de changer de joueurs à chaque tour

        if @current_player == @player1
            @current_player = @player2

        else @current_player = @player1

        end
    end
    def actual_game #déroulement du jeu jusqu'à une victoire ou un nul
      loop do 
       puts "situation actuelle :"
       puts "_"*20
                @board.show_board
                puts "C'est au tour de #{@current_player.name} jouer avec le #{@current_player.symbol}"
                    @board.play_turn(@current_player.symbol)
    
                if @board.victory? == true 
    
    
                puts "_"*20
                puts "Voici la situation finale :"
                @board.show_board
                puts "_"*20
                puts ""
                puts "BRAVO ! TU AS GAGNÉ ! Va chercher un cookie, tu l'as bien mérité coquin.ne ;)"
                puts " #{current_player.name} est donc notre championg."
                new_round
    
                break 
    
                end 
    
                switch_players
            end 
    end 
    def new_round #permet, normalement, de relancer une partie quand celle d'avant est finie. Ne marche pas comme je voudrais...
        puts "_"*20
        puts "_"*20
        puts "Cho pour la revanche ? tape 1. T'en as marre ? tape 2 (je t'en voudrais pas)"
        print ">"
        choice = gets.chomp().to_i
        if choice == 1
            puts "ET NON ! Je t'ai bien eu. J'ai pas réussi à faire marcher cette boucle :'("
            @board = Board.new
        
        elsif choice == 2
             puts "Ciao les moches"

        else puts "Si t'as ce message d'erreur, tu sais apparemment pas compter jusqu'à 2..."
                new_round
       end
   end

  end