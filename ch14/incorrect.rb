class Incorrect
  attr_accessor :one, :two
  def initialize
    one = 1
    self.two = 2
  end
end
obj = Incorrect.new
p obj.one
p obj.two
