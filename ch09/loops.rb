a = 1
a *= 2 while a < 100
p a
a -= 10 until a < 100
p a

file = File.open("ordinal")
while line = file.gets
  puts(line) if line =~ /third/ .. line =~ /fifth/
end

file = File.open("ordinal")
while file.gets
  print if ~/third/ .. ~/fifth/
end

File.foreach("ordinal") do |line|
  if (($. == 1) || line =~ /eig/) .. (($. == 3) || line =~ /nin/)
    print line
  end
end

print "Hello\n" while false
begin
  print "Goodbye\n"
end while false
