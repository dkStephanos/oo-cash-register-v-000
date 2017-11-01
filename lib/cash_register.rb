class CashRegister

  attr_accessor :total, :discount, :last_price, :items

  def initialize(discount = nil)
    @total = 0.0
    @last_price = 0.0
    @items = []
    if discount
      @discount = discount
    end
  end

  def add_item(title, price, quantity = 1.0)
    @total += price * quantity
    @last_price += price * quantity
    @items << title
  end

  def apply_discount
    result = ""
    if discount
      @total -= total * (discount * 0.01)
      result = "After the discount, the total comes to $#{@total}."
    else
      result = "There is no discount to apply."
    end
    result
  end

  def void_last_transaction
    @total -= @last_price
    @last_price = 0.0
    @items.pop
  end
end
