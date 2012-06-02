def varargs(arg1, *rest)
  "arg1=#{arg1}, rest=#{rest.inspect}"
end

puts varargs("one")
puts varargs("one", "two")
puts varargs "one", "two", "three"

class Parent
  def do_something(*args)
    args.inspect
  end
end

puts Parent.new.do_something(1, 2, 3)

class Child < Parent
  def do_something(*)
    super
  end
end

puts Child.new.do_something(1, 2, 3)

def split_apart(first, *splat, last)
  puts "First: #{first.inspect}, splat: #{splat.inspect}, " +
       "last: #{last.inspect}"
end

split_apart(1,2)
split_apart(1,2,3)
split_apart(1,2,3,4)
