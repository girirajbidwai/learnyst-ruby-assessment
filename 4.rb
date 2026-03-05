class Rectangle
  attr_accessor :length, :breadth
  def initialize(length:, breadth:)
    @length = length
    @breadth = breadth
  end

  def area()
    puts "Area is #{@length*@breadth}"
  end

  def perimeter()
    puts "Perimeter is #{2*(@length+@breadth)}"
  end
end

class Square < Rectangle
  def initialize(side:)
    super(length: side,breadth: side)
  end
end

square = Square.new(side: 5)
square.area
square.perimeter