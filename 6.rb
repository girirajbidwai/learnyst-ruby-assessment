module Discountable
  def discounted_price(percent)
    @price = price - (price*(percent/100.0))
  end
end

class Product
  attr_accessor :price

  include Discountable
  def initialize(price:)
    @price = price
  end
end

product = Product.new(price: 100)
product.discounted_price(20)
puts "Discounted price #{product.price}"