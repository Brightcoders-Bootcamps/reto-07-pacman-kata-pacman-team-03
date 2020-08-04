#frozen_string_literal: true

# Limites para agregar figuras y no romper las paredes: Y = 17, X = 37
class Maze
  attr_reader :wall_x, :wall_y

  def initialize
    @wall_y = 9553.chr(Encoding::UTF_8)
    @wall_x = 9552.chr(Encoding::UTF_8)
  end

  def level_1(board)
    # binding.irb
    8.times do |idy|
      pwr = (idy + 1) * 2
      x_line(5, pwr, 2, board)
    end
    basic_simetric_shape(5, 9, 9, board)
    board
  end

  #def level_2(board)
  #  5.times do |idx|
  #    idx = idx
  #   x_line(5, 2, 2, board)
    
  #end

  def basic_simetric_shape(size, add_y, add_x, board)
    size.times do |idx|
      board[add_y][add_x - idx] = @wall_x
      board[add_y - idx][add_x] = @wall_y
    end
    board
  end
  
  def x_line(size, add_y, add_x, board)
    size.times do |idx|
      board[add_y][add_x + idx] = @wall_x
    end
    board
  end

  def y_line(size, add_y, add_x, board)
    size.times do |idy|
      board[add_y + idy][add_x] = @wall_y
    end
    board
  end
end
