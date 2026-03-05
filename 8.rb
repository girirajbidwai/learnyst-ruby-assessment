arr = [{name: "Alice", age: 25}, {name: "Bob", age: 30}]

arr.each do |i|
  puts "Name is #{i[:name]}"
end

names = arr.map {|p| p[:name]}
puts names