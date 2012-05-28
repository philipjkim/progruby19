num = 81
6.times do
  puts "#{num.class}: #{num}"
  num *= num
end

puts 123456
puts 0d123456
puts 123_456
puts -543
puts 0xaabb
puts 0377
puts -0b10_1010
puts 123_456_789_123_456_789

puts Rational(3, 4) * Rational(2, 3)
puts Rational("3/4") * Rational("2/3")
puts Complex(1, 2) * Complex(3, 4)
puts Complex("1+2i") * Complex("3+4i")
