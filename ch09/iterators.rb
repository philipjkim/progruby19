3.times do
  print "Ho! "
end
puts

0.upto(9) do |x|
  print x, " "
end
puts

0.step(12, 3) { |x| print x, " " }
puts

[ 1, 1, 2, 3, 5 ].each { |val| print val, " " }
puts

File.open("ordinal").grep(/d$/) do |line|
  puts line
end

for i in ['fee', 'fi', 'fo', 'fum']
  print i, " "
end
for i in 1..3
  print 1, " "
end
for i in File.open("ordinal").find_all {|line| line =~ /d$/}
  print i.chomp, " "
end
puts

class Periods
  def each
    yield "Classical"
    yield "Jazz"
    yield "Rock"
  end
end
periods = Periods.new
for genre in periods
  print genre, " "
end
puts

i=0
loop do
  i += 1
  next if i < 3
  print i
  break if i > 4
end
puts

x = "initial value"
y = "another value"
[ 1, 2, 3 ].each do |x|
  y = x + 1
end
p [ x, y ]

if false
  a = "never used"
end
3.times {|i| a = i}
p a

square = "yes"
total = 0
[ 1, 2, 3 ].each do |val|
  square = val * val
  total += square
end
puts "Total = #{total}"
puts "Square = #{square}"

square = "yes"
total = 0
[ 1, 2, 3 ].each do |val; square|
  square = val * val
  total += square
end
puts "Total = #{total}"
puts "Square = #{square}"

