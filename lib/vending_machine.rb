require './lib/snack.rb'
require 'pry'

class VendingMachine
attr_reader :inventory

  def initialize
    @inventory = []
  end

  def add_snack(snack)
    @inventory << snack
  end


end