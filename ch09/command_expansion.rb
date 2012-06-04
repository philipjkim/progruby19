p `date`
p `ls`.split[1]
p %x{echo "Hello there"}

alias old_backquote `
def `(cmd)
  result = old_backquote(cmd)
  if $? != 0
    puts "*** Command #{cmd} failed: status = #{$?.exitstatus}"
  end
  result
end

print `ls -l ~/.vimrc`
print `ls -l ~/wibble`
