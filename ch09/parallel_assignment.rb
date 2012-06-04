a = 1
b = 2
puts "a=#{a}, b=#{b}"
a,b = b, a
puts "a=#{a}, b=#{b}"

a = 1, 2, 3, 4
p a
b = [1, 2, 3, 4]
p b

a, b = 1, 2, 3, 4
puts "a=#{a}, b=#{b}"
c, = 1, 2, 3, 4
puts "c=#{c}"

a, b, c, d, e = *(1..2), 3, *[4, 5]
puts "a=#{a}, b=#{b}, c=#{c}, d=#{d}, e=#{e}"

a, *b = 1, 2, 3
puts "a=#{a}, b=#{b}"
a, *b = 1
puts "a=#{a}, b=#{b}"

*a, b = 1, 2, 3, 4
c, *d, e = 1, 2, 3, 4
f, *g, h, i, j = 1, 2, 3, 4
puts "a=#{a}, b=#{b}, c=#{c}, d=#{d}, e=#{e}, " +
     "f=#{f}, g=#{g}, h=#{h}, i=#{i}, j=#{j}"

first, *, last = 1, 2, 3, 4, 5, 6
puts "first=#{first}, last=#{last}"

a, (b, c), d = 1,2,3,4
puts "a=#{a}, b=#{b}, c=#{c.inspect}, d=#{d}"
a, (b, c), d = [1,2,3,4]
puts "a=#{a}, b=#{b}, c=#{c.inspect}, d=#{d}"
a, (b, c), d = 1,[2,3],4
puts "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
a, (b, c), d = 1,[2,3,4],5
puts "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
a, (b,*c), d = 1,[2,3,4],5
puts "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
