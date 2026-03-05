class Person
  attr_accessor :name, :age
  def initialize(name:, age:)
    @name = name
    @age = age
  end

  def introduce()
    puts "Hi, I am #{@name} and I am #{@age}"
  end
end

person = Person.new(name: "Alice",age: 25)
person1 = Person.new(name: "Bob",age: 24)
person.introduce()
person1.introduce()