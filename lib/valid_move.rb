# code your #valid_move? method here

def valid_move?(board, index)
  # position is vacant AND move is present on the game board
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
    puts "good move"
  # move is not present on the game board  
  elsif index < 0 || index > 8
    puts "You must move to a position within the tic-tac-toe board"
  # move is not vacant 
  elsif position_taken?(board, index)
    puts "The position must be vacant, not currently taken by a player"
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end
