class User
  attr_accessor :name, :email
  attr_reader :id #only creates the getter
  @@cnt = 1 #class variable shared across all the objects
  def initialize(attrs)
    @name = attrs[:name]
    @email = attrs[:email]
    @id = @@cnt
    @@cnt += 1
  end
end

user = User.new(name: "Giri",email: "giri@mail.com",password: "Admin@11")
user1 = User.new(name: "Bob",email: "bob@mail.com",password: "Bob@11")

puts "user name is #{user1.name} mail #{user1.email} id #{user1.id}"
begin 
  user.id = 5
rescue => e
  puts e.message
end

begin
  puts user.password
rescue => e
  puts e
end





