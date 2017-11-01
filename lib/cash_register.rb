class CashRegister

  attr_accessor :total, :discount, :last_price

  def initialize(discount = nil)
    @total = 0
    if discount
      @discount = discount
    end
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @last_price += price * quantity
  end

end
