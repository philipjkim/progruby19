def n_times(thing)
  lambda {|n| thing * n}
end

p1 = n_times(23)
p p1.call(3)
p p1.call(4)

p2 = n_times("Hello ")
p p2.call(3)

def power_proc_generator
  value = 1
  lambda { value += value }
end

power_proc = power_proc_generator
puts power_proc.call
puts power_proc.call
puts power_proc.call
puts power_proc.call
