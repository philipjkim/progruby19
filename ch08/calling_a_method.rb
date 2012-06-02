puts File.size("testfile")
puts Math.sin(Math::PI/4)

def meth_one
  "one"
end
puts meth_one

def meth_two(arg)
  case
  when arg > 0 then "positive"
  when arg < 0 then "negative"
  else "zero"
  end
end

puts meth_two(23)
puts meth_two(0)

def meth_three
  100.times do |num|
    square = num*num
    return num, square if square > 1000
  end
end
p meth_three

def five(a, b, c, d, e)
  "I was passed #{a} #{b} #{c} #{d} #{e}"
end
puts five(1, 2, 3, 4, 5)
puts five(1, 2, 3, *['a', 'b'])
puts five(*['a', 'b'], 1, 2, 3)
puts five(*(10..14))
puts five(*[1,2], 3, *(4..5))
