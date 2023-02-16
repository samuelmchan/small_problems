def balanced?(str)
  characthers = str.chars
  characthers.each_with_index do |char, index|
    case char
    when '(' then clear_right(characthers[index..-1])
    when ')' then clear_left(characthers[0..index])
    end
  end
  characthers.none?(/[)(]/)
end

def clear_right(arr)
  match_index = arr.index { |p| p == ')'}
  unless match_index.nil?
    arr[0].clear
    arr[match_index].clear
  end
end

def clear_left(arr)
  match_index = arr.rindex { |p| p == '('}
  unless match_index.nil?
    arr[-1].clear
    arr[match_index].clear
  end
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false