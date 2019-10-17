require 'pry'

class BoardCase
  attr_accessor :value, :case_number

  def initialize (case_number)
    @value = " "
    @case_number = case_number
  end
end