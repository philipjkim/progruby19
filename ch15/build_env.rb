require 'rbconfig'
include RbConfig
puts "CONFIG['host'] = #{CONFIG['host']}"
puts "CONFIG['libdir'] = #{CONFIG['libdir']}"
