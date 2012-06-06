File.open("testfile") do |file|
  while line = file.gets
    puts line
  end
end

File.open("testfile") do |file|
  file.each_byte {|ch| print "#{ch.chr}:#{ch} " }
  puts
end

File.open("testfile") do |file|
  file.each_line {|line| puts "Got #{line.dump}" }
end

File.open("testfile") do |file|
  file.each_line("e") {|line| puts "Got #{line.dump}" }
end

IO.foreach("testfile") {|line| puts line }

str = IO.read("testfile")
p str.length
p str[0, 30]

arr = IO.readlines("testfile")
p arr.length
p arr[0]
