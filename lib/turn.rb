def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false
    true
  else
    false
end
end
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
       false
    elsif board[index] == "X" || board[index] == "O"
       true
    end
end
def move(board, position, character ="X")
  def update_array_at_with(array, index, value)
  array[index] = value
end

update_array_at_with(board, position, character)
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"

  user_input = gets.strip
  index = input_to_index(user_input)

  if valid_move?(board, index) == true
    move(board, index, "X")
  else
    puts "Try again. Please enter 1-9"
    user_input = gets.strip

    index = input_to_index(user_input)

    move(board, index, character ="X")
    update_array_at_with(board, index, character)
    display_board(board)
  # else
  #   until valid_move?(board, index)
  #     puts "Please enter 1-9"
  #     user_input = gets
  #     index = input_to_index(user_input)
  end
  if valid_move?(board, index) == true
    display_board(board)
end

