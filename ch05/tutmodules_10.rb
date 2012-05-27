module Trig
  PI = 3.141592624
  def Trig.sin(x)
    Math.sin(x)
  end
  def Trig.cos(x)
    Math.cos(x)
  end
end

module Moral
  VERY_BAD = 0
  BAD = 1
  def Moral.sin(badness)
    badness
  end
end

puts Trig.sin(Trig::PI/4)
puts Moral.sin(Moral::VERY_BAD)
