p 1.even?
p 2.even?
p 1.instance_of?(Fixnum)

str = "string"
puts "str.chop=#{str.chop}, str=#{str}"
puts "str.chop!=#{str.chop!}, str=#{str}"

def my_new_method(arg1, arg2, arg3)
  puts "arg1=#{arg1}, arg2=#{arg2}, arg3=#{arg3}"
end
def my_other_method
  puts "no args here"
end

my_new_method(123, "abc", 3.14)
my_other_method

def cool_dude(arg1="Torres", arg2="Drogba", arg3="Mata")
  "#{arg1}, #{arg2}, #{arg3}"
end

puts cool_dude
puts cool_dude("Bart")
puts cool_dude("Bart", "Lisa")
puts cool_dude("Bart", "Lisa", "Meggie")

def surround(word, pad_width=word.length/2)
  "[" * pad_width + word + "]" * pad_width
end

puts surround("elephant")
puts surround("fox")
puts surround("fox", 10)

