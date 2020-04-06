require 'pry'

class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount=20)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity=1)
    self.total += price * quantity
  end
  
  def apply_discount
    self.total = self.total - (self.total * (self.discount/100))
    binding.pry
    self.total
  end
  
end