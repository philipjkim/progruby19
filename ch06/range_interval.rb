p (1..10) === 5
p (1..10) === 15
p (1..10) === 3.14159
p ('a'..'j') === 'c'
p ('a'..'j') === 'z'

car_age = gets.to_f
case car_age
when 0...1
  puts "Mmm.. new car smell"
when 1...3
  puts "Nice and new"
when 3...6
  puts "Reliable but slightly dinged"
when 6...10
  puts "Can be a struggle"
when 10...30
  puts "Clunker"
else
  puts "Vintage gem"
end
