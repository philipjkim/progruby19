# encoding: utf-8
def Σ(*args)
  args.inject(:+)
end
puts Σ 1, 3, 5, 9
