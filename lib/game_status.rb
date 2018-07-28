# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2],
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    first_position  = combo[0]
    second_position = combo[1]
    third_position  = combo[2]

    first = board[first_position]
    second = board[second_position]
    third = board[third_position]

    if first == "X" && second == "X" && third == "X"
      true
    elsif first == "O" && second == "O" && third == "O"
      true
    else
      false
    end
  end
end

def full?(board)
  board.all? do |space|
    if (space == "X" || space == "O")
      true
    else
      false
end

def draw?(board)
  full?(board)
  if won?(board)
    false
  else
    true
  end
end

def over?(board)
  if won?(board) || full?(board)
    true
  else
    false
  end
end

def winner(board)
  if combo = won?(board)
    board[combo.first]
  end
end
