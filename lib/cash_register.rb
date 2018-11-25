class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title,price,quantity = 1)
    self.total += price * quantity
  end
  
  def apply_discount
    self.total -= self.total * (self.discount.to_f / 100)
    "After the discount, the total comes to $#{self.total.to_i}."
    if !self.discount
      "There is no discount to apply."
    end
  end
end
