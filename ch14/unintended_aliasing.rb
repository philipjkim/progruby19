arr = [1, 2]
hash = { arr => "value" }
p hash[arr]
arr[0] = 99
p hash[arr]
p hash.rehash
p hash[arr]
