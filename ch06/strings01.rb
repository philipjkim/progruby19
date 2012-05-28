puts 'escape using "\\"'
puts 'That\'s right'

puts "Seconds/day: #{24*60*60}"
puts "#{'Ho! '*3}Merry Christmas!"
puts "This is line #$."

puts "now is #{ def the(a)
                  'the ' + a
                end
                the('time')
              } for all good coders..."

puts %q/general single-quoted string/
puts %Q!general double-quoted string!
puts %Q{Seconds/day: #{24*60*60}}
puts %!general double-quoted string!
puts %{Seconds/day: #{24*60*60}}

string = <<END_OF_STRING
    The body of the string
    is the input lines up to
    one starting with the same
    text that followed the '<<'
END_OF_STRING
puts string

string = <<-END_OF_STRING
    The body of the string is the input lines up to
    one starting with the same text that followed the '<<'
    END_OF_STRING
puts string

print <<-STRING1, <<-STRING2
  Concat
  STRING1
    enate
    STRING2

