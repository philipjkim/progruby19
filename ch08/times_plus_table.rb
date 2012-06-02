print "(t)imes or (p)lus: "
operator = gets
print "number: "
number = Integer(gets)
if operator =~ /^t/
  puts((1..10).collect {|n| "#{number}*#{n}=#{n*number}"}.join(", "))
else
  puts((1..10).collect {|n| "#{number}+#{n}=#{n+number}"}.join(", "))
end
