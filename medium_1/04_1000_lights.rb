def toggle_lights(int)
  result = []
  switch_board = Array.new(int, false)
    1.upto(int) do |n|
    switch_board.each_index do |index|
      switch_board[index] = !switch_board[index] if (index + 1) % n == 0
    end
  end
  switch_board.each_with_index do |switch, index|
    result << (index + 1) if switch
  end
  result
end

p toggle_lights(5)