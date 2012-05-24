a = [1, 3, "cat"]
h = {dog: "canine", fox: "lupine"}

enum_a = a.to_enum
enum_h = h.to_enum

p enum_a.next
p enum_h.next
p enum_a.next
p enum_h.next

enum_a = a.each
p enum_a.next
p enum_a.next

short_array = [1,2,3]
long_array = ('a'..'z')
short_enum = short_array.to_enum
long_enum = long_array.to_enum
loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end
short_enum = short_array.to_enum
long_enum = long_array.to_enum
loop do
  puts "#{long_enum.next} - #{short_enum.next}"
end
