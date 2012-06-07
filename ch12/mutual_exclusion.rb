# This example should print a number less than 100,000
# but it prints 100,000.
def inc(n)
  n + 1
end
sum = 0
threads = (1..10).map do
  Thread.new do
    10_000.times do
      sum = inc(sum)
    end
  end
end
threads.each(&:join)
p sum

sum = 0
mutex = Mutex.new
threads = (1..10).map do
  Thread.new do
    10_000.times do
      mutex.lock
      sum = inc(sum)
      mutex.unlock
    end
  end
end
threads.each(&:join)
p sum

sum = 0
mutex = Mutex.new
threads = (1..10).map do
  Thread.new do
    10_000.times do
      mutex.synchronize do
        sum = inc(sum)
      end
    end
  end
end
threads.each(&:join)
p sum
