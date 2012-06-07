require 'profile'
count = 0
10_000.times do
  words = File.read("wordlist")
  count += words.scan(/^.....$/).size
end
puts "#{count} five-character words"
