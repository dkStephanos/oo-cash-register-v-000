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

  def add_item(title, price, quantity = nil)
    if !quanitity
      quanitity = 1
    end

    @total += price * quantity
    @last_price += price * quantity
    @items << title
  end

  def apply_discount
    result = ""
    if discount
      @total -= total * discount
      result = "After the discount, the total comes to $#{@total}."
    else
      result = "There is no discount to apply."
    end
    result
  end

  def void_last_transaction
    @total -= @last_price
    @last_price = 0.0
    @items.pop!
end
