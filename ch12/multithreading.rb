require 'net/http'
pages = %w( www.rubycentral.com slashdot.org www.google.com )
threads = []
for page_to_fetch in pages
  threads << Thread.new(page_to_fetch) do |url|
    h = Net::HTTP.new(url, 80)
    print "Fetching: #{url}\n"
    resp = h.get('/')
    print "Got #{url}: #{resp.message}\n"
  end
end
threads.each {|thr| thr.join }
