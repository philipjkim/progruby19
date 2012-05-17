def who_says_what
  yield("Philip", "hello")
  yield("Rosa", "goodbye")
end
who_says_what {|person, phrase| puts "#{person} says #{phrase}"}
