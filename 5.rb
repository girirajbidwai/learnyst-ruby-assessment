class Vehicle
  attr_accessor :make, :speed
  def initialize(make:, speed:)
    @make = make
    @speed = speed
  end

  def accelerate(amount:)
    @speed += amount
    puts "Accelerated. Speed is #{@speed}"
  end

  def brake(amount:)
    @speed -= amount
    puts "Brake. Speed is #{@speed}"
  end
end

class Truck < Vehicle
  attr_accessor :payload
  def initialize(payload:, make:, speed:)
    @payload = payload
    super(make: make,speed: speed)
    puts "Truck of #{@make} is having #{@payload} and run with speed of #{@speed}"
  end
end

truck = Truck.new(payload: 5000, make: "Tata", speed: 50)
truck.accelerate(amount: 10)
truck.brake(amount: 5)
