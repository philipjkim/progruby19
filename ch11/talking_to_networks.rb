require 'net/http'
h = Net::HTTP.new('www.pragprog.com', 80)
response = h.get('/')
if response.message == "OK"
  puts response.body.scan(/<img alt=".*?" src="(.*?)"/m).uniq
end

require 'open-uri'
open('http://www.pragprog.com') do |f|
  puts f.read.scan(/<img alt=".*?" src="(.*?)"/m).uniq
end
