p [1,3,5,7].inject(0) {|sum, element| sum+element}
p [1,3,5,7].inject(1) {|product, element| product*element}

p [1,3,5,7].inject {|sum, element| sum+element}
p [1,3,5,7].inject {|product, element| product*element}

p [1,3,5,7].inject(:+)
p [1,3,5,7].inject(:*)
