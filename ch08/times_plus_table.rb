print "(t)imes or (p)lus: "
operator = gets
print "number: "
number = Integer(gets)
if operator =~ /^t/
  calc = lambda {|n| "#{number}*#{n}=#{n*number}"}
else
  calc = lambda {|n| "#{number}+#{n}=#{n+number}"}
end
puts (1..10).collect(&calc).join(", ")
