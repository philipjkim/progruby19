class Parent
end

class Child < Parent
end

puts "The superclass of Child is #{Child.superclass}"
puts "The superclass of Parent is #{Parent.superclass}"
puts "The superclass of Object is #{Object.superclass}"
puts "The superclass of BasicObject is #{BasicObject.superclass.inspect}"
