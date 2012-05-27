module Debug
  def who_am_i?
    "#{self.class.name} (\##{self.object_id}): #{self.to_s}"
  end
end

class Phonograph
  include Debug
  def initialize(title)
    @title = title
  end
  def to_s
    @title
  end
end

class EightTrack
  include Debug
  def initialize(title)
    @title = title
  end
  def to_s
    @title
  end
end

ph = Phonograph.new("West End Blues")
et = EightTrack.new("Surrealistic Pillow")

puts ph.who_am_i?
puts et.who_am_i?
