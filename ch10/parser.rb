word_list = open("text.txt").lines.flat_map do |line|
  line.downcase.split(/[^[:alpha:]]/).reject(&:empty?)
end.uniq.sort
p word_list
f = open("wordlist", 'w')
f.puts(word_list.join("\n"))
