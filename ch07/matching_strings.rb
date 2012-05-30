p /cat/ =~ "dog and cat"
p /cat/ =~ "catch"
p /cat/ =~ "Cat"

p "dog and cat" =~ /cat/
p "catch" =~ /cat/
p "Cat" =~ /cat/

str = "cat and dog"
if str =~ /cat/
  puts "There's a cat here somewhere"
end

File.foreach("testfile").with_index do |line, index|
  puts "#{index}: #{line}" if line =~ /on/
end
File.foreach("testfile").with_index do |line, index|
  puts "#{index}: #{line}" if line !~ /on/
end
