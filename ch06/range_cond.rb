while line = gets
  puts line if line =~ /start/ .. line =~ /end/
end
