str = "dog and cat"
pattern = /nd/
p pattern =~ str
p str =~ pattern

p /mm\/dd/
p Regexp.new("mm/dd")
p %r{mm/dd}

name = "Fats Waller"
p name =~ /a/
p name =~ /z/
p /a/ =~ name
p /a/.match(name)
p Regexp.new("all").match(name)

def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end

puts show_regexp('very interesting', /t/)
puts show_regexp(name, /a/)
puts show_regexp(name, /lle/)
puts show_regexp(name, /z/)

puts show_regexp('yes | no', /\|/)
puts show_regexp('yes (no)', /\(no\)/)
puts show_regexp('are you sure?', /e\?/)

str = "this is\nthe time"
p show_regexp(str, /^the/)
p show_regexp(str, /is$/)
p show_regexp(str, /\Athis/)
p show_regexp(str, /\Athe/)
p show_regexp(str, /\bis/)
p show_regexp(str, /\Bis/)
