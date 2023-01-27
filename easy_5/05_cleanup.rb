def cleanup(str)
  str.gsub(/\W+/," ")
end

p cleanup("---what's my +*& line?") == ' what s my line '