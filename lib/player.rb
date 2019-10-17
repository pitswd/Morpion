require 'pry'

class Player
    attr_reader :name, :symbol

    def initialize
      @name = gets_name
      @symbol = gets_symbol
    end

    def gets_name
      puts "Quel est ton nom ?"
      print ">"
      name = gets.chomp
    end

    def gets_symbol
        puts "Choisis entre X et O :"
        print ">"
        symbol = gets.chomp
    end

    def show_state
    
        puts "Le joueur un s'appelle #{@name} et à choisit #{@symbol} comme symbole."
    end

end