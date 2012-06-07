require 'profile'
count = 0
10_000.times do
  open("wordlist").lines do |word|
    count += 1 if word.length == 5
  end
end
puts "#{count} five-character words"
