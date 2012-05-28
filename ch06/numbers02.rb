some_file = File.open("number_pairs.txt")
some_file.each do |line|
  v1, v2 = line.split
  print v1 + v2, " "
end
some_file.close
puts

some_file = File.open("number_pairs.txt")
some_file.each do |line|
  v1, v2 = line.split
  print Integer(v1) + Integer(v2), " "
end
some_file.close
