str = "Dog and Cat"
new_str = str.sub(/Cat/, "Tom")
puts "Let's go to the #{new_str} for a pint."

new_str1 = str.sub(/a/, "*")
new_str2 = str.gsub(/a/, "*")
puts "Using sub: #{new_str1}"
puts "Using gsub: #{new_str2}"

str1 = "now is the time"
str1.sub!(/i/, "*")
str1.gsub!(/t/, "T")
puts str1
