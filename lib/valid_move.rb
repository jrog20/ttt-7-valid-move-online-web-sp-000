# code your #valid_move? method here

def valid_move?(board, index)
  # move is not present on the game board  
  if board[index] < 0 || board[index] > 8
    puts "You must move to a position within the tic-tac-toe board"
  elsif position_taken?
    puts "The position must be vacant, not currently taken by a player"
    # position must be vacant AND move must be present on the game board
  else board[index].between?(0, 8) && position_taken? == false
    true
    puts "good move"
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else board[index] == " " || "" || nil
    false
  end
end
