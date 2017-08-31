require 'pry'

class CashRegister

  attr_accessor :discount, :total, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    quantity_total = price * quantity
    @total += quantity_total
    quantity.times do
      @items << item
    end
  end

  def apply_discount
    if @discount > 0
      @total = @total * (1 - @discount.to_f/100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = 0
    @items.clear
  end


end
