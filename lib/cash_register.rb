class CashRegister
  attr_accessor :total, :discount
  
  @@items = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title,price,quantity = 1)
    self.total += price * quantity
  end
  
  def apply_discount
    self.total -= self.total * (self.discount.to_f / 100)
    if self.discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{self.total.to_i}."
    end
    
  end
end
