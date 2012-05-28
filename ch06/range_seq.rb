p (1..10).to_a
p ('bar'..'bat').to_a
enum = ('bar'..'bat').to_enum
p enum.next
p enum.next

digits = 0..9
p digits.include?(5)
p digits.min
p digits.max
p digits.reject {|i| i < 5}
p digits.inject(:+)

class PowerOfTwo
  attr_reader :value
  def initialize(value)
    @value = value
  end
  def <=>(other)
    @value <=> other.value
  end
  def succ
    PowerOfTwo.new(@value + @value)
  end
  def to_s
    @value.to_s
  end
end

p1 = PowerOfTwo.new(4)
p2 = PowerOfTwo.new(32)
p (p1..p2).to_a
