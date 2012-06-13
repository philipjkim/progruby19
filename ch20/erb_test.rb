require 'erb'
SOURCE =
%{<% for number in min..max %>
The number is <%= number %>
<% end %>
}
erb = ERB.new(SOURCE)
min, max = 4, 6
puts erb.result(binding)
