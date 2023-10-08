def horizontal_border(width)
  "+" + "-" * width + "+"
end
  
def spacer(width)
  "|" + " " * width + "|"
end

def print_in_box(string)
  width = string.size + 2
  puts(
   [horizontal_border(width),
    spacer(width),
    "| #{string} |",
    spacer(width),
    horizontal_border(width)])
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
