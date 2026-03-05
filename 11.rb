module Logger
  def log(message:)
    puts "[LOG]: #{message}"
  end
end

class Service
  extend Logger
end

Service.log(message: "ZeroDivisionError")
Service.log(message: "SERVICE STARTED")