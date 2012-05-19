person = "Philip"
puts "The object in 'person' is a #{person.class}"
puts "The object has an id of #{person.object_id}"
puts "and a value of '#{person}'"
person2 = person
person3 = person.dup
person[0] = 'W'
puts "person is #{person}"
puts "person2 is #{person2}"
puts "person3 is #{person3}"
person4 = person3
person3.freeze
person4[0] = 'W'
