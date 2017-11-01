class CashRegister

  attr_accessor :total, :discount, :last_total

  def initialize(discount = nil)
    @total = 0
    if discount
      @discount = discount
    end
  end




end
