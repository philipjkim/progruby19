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

def kind(year)
  case year
  when 1850..1889 then "Blues"
  when 1890..1909 then "Ragtime"
  when 1910..1929 then "New Orleans Jazz"
  when 1930..1939 then "Swing"
  when 1940..1950 then "Bebop"
  else "Jazz"
  end
end
puts kind(1888)
puts kind(2002)
