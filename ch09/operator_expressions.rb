a, b, c = 1, 2, 3
puts a * b + c
puts (a.*(b)).+(c)

'
class Fixnum
  alias old_plus +

  def +(other)
    old_plus(other).succ
  end
end

puts 1 + 2
a = 3
puts a += 4
puts a + a + a
'

a = [ 1, 2, 3 ]
p a << 4

class ScoreKeeper
  def initialize
    @total_score = 0
    @count = 0
  end
  def <<(score)
    @total_score += score
    @count += 1
    self
  end
  def average
    fail "No scores" if @count == 0
    Float(@total_score) / @count
  end
end
scores = ScoreKeeper.new
scores << 10 << 20 << 40
puts "Average = #{scores.average}"

class SomeClass
  def []=(*params)
    value = params.pop
    puts "Indexed with #{params.join(', ')}"
    puts "value = #{value.inspect}"
  end
end
s = SomeClass.new
s[1] = 2
s['cat', 'dog'] = 'enemies'

