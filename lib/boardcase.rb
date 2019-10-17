require "pry"
#ce fichier permet de donner des valeurs à chaque case individuellement, puis les utiliser dans `board.rb`
class BoardCase
  attr_accessor :value, :case_number

  def initialize(case_number)
    @value = " "
    @case_number = case_number
  end
end
