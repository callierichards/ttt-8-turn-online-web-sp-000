def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index="X")
  if !position_taken?(board, index) && (index).between?(0,8)
  return true
else
    return false
  end
end

def position_taken?(board, index="X")

if board[index] == "" || board[index] == " " || board[index] == nil
  return false
  puts "Good choice!"
else
  return true
  puts "Pick another space!"
end
end

def input_to_index(user_input)
   user_input.to_i - 1
end

def move(board, index, player_chr="X")
  board[index] = player_chr
end

def turn(board)
  index = input_to_index(user_input)
  puts "Please enter 1-9"
  if board[index] == "" || board[index]== " " || board[index]==nil
    return false
  else
    return true
    puts "Please pick another space!"
  end
end
