module Greetable
  def greet
    puts "Good Morning #{@name}"
  end
end

class Person  
  attr_accessor :name
  include Greetable 
  def initialize(name)
    @name = name
  end
end

class Employee
  attr_accessor :name
  include Greetable
  def initialize(name)
    @name = name
  end
end

person = Person.new("Alice")
person.greet

employee = Employee.new("BoB")
employee.greet
