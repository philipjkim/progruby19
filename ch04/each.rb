[ 1, 3, 5, 7, 9 ].each {|i| puts i }

f = File.open("testfile")
f.each do |line|
  puts "The line is: #{line}"
end
f.close

f = File.open("testfile")
f.each_with_index do |line, index|
  puts "Line #{index} is: #{line}"
end
f.close
