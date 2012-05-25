def create_block_object(&block)
  block
end

bo = create_block_object {|param| puts "You called me with #{param}"}
bo.call 99
bo.call "cat"

bo = lambda {|param| puts "You called me with #{param}"}
bo.call 99
bo.call "cat"
