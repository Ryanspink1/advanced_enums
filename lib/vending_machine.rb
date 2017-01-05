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
# binding.pry
  def snacks_by_name
    inventory.map do |items|
      items.name
    end
  end

  def how_many_snacks
    inventory.group_by do |items|
      items.quantity
    end
  end

  def inventory_by_alphabet
    inventory.group_by do |items|
      items.name[0]
    end
  end




end