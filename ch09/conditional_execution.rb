p nil && 99
p false && 99
p "cat" && 99

p nil || 99
p false || 99
p "cat" || 99

var = nil
p var
var ||= "default value"
p var
var ||= "yet another value"
p var

p defined? 1
p defined? dummy
p defined? printf
p defined? String
p defined? $_
p defined? Math::PI
p defined? a = 1
p defined? 42.abs
p defined? nil

def nickname(artist)
  if artist == "Gillespie" then "Dizzy"
  elsif artist == "Parker" then "Bird"
  else "unknown"
  end
end
p nickname("Parker")
p nickname("Jordan")
