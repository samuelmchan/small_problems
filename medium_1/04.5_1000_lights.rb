def toggle_lights(int)
  result = []
  switch_board = Array.new(int, false)
  
  1.upto(int) do |n|
    switch_board.map!.with_index do |switch, index|
      next switch unless (index + 1) % n == 0
      !switch
    end
  end

  switch_board.each_with_index do |switch, index|
    result << (index + 1) if switch
  end

  result
end

p toggle_lights(5)
p toggle_lights(10)