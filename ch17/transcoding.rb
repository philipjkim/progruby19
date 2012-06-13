# encoding: ascii-8bit
str = "\xc3\xa9"
p str.encoding
str.force_encoding("utf-8")
p str.bytes.to_a
p str.encoding

original = "ol\xe9"
p original.bytes.to_a
p original.encoding
new = original.encode("utf-8", "iso-8859-1")
p new.bytes.to_a
p new.encoding
