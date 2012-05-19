require_relative 'words_from_string.rb'
require_relative 'count_frequency.rb'

raw_text = File.read("para.txt")
word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by {|word, count| count}
top_five = sorted.last(5)

top_five.each do |word, count|
  puts "#{word}: #{count}"
end

puts top_five.map { |word, count| "#{word}: #{count}" }
