# encoding: utf-8
π = 3.14159
puts "π = #{π}"

def show_encoding(str)
  puts "'#{str}' (size #{str.size}) is #{str.encoding.name}"
end
show_encoding "cat"
show_encoding "δog"
