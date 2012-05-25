class File
  def self.my_open(*args)
    result = file = File.new(*args)
    if block_given?
      result = yield file
      file.close
    end
    return result
  end
end

f = File.my_open("testfile", "r")
while line = f.gets
  puts line
end

File.my_open("testfile", "r") do |file|
  while line = file.gets
    puts line
  end
end
