inst_section = {
  :cello => 'string',
  :clarinet => 'woodwind',
  :drum => 'percussion',
  :oboe => 'woodwind',
  :trumpet => 'brass',
  :violin => 'string'
}

p inst_section[:oboe]
p inst_section[:cello]
p inst_section['cello']
puts "An oboe is a #{inst_section[:oboe]}"
