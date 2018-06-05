require 'pry'
class CashRegister

  attr_accessor :total
  attr_accessor :discount
  attr_accessor :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantities=1)
    @items =[]
    item = {:title=>title, :price=>price, :quantities=>quantities}

    @items << item
    @total += price*quantities
    #binding.pry
  end



  def apply_discount
    @total = @total*@discount
    return "After the discount, the total comes to $#{@total}."
  end
end
