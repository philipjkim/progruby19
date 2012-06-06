file = File.new("testfile", "r")
p file.read
file.close

File.open("testfile", "r") do |file|
  p file.read
end
