3.times {print "X "}
1.upto(5) {|i| print i, " "}
99.downto(95) {|i| print i, " "}
50.step(80, 5) {|i| print i, " "}

puts
10.downto(7).with_index {|num, index| puts "#{index}: #{num}"}
