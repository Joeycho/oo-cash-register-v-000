require 'pry'
class CashRegister

  attr_accessor :total
  attr_accessor :discount
  attr_accessor :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantities=0)
    @items =[]
    item = {:title=>title, :price=>price, :quantities=>quantities}

    @items << item
    @total += quantities*price
    binding.pry
  end

  def apply_discount

  end
end
