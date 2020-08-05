# frozen_string_literal: true

# Limites para agregar figuras y no romper las paredes: Y = 17, X = 37
class Maze
  attr_reader :wall_x, :wall_y

  def initialize
    @wall_y = 9553.chr(Encoding::UTF_8)
    @wall_x = 9552.chr(Encoding::UTF_8)
  end

  def level_1(board)
    12.times do |idx|
      pwx = (idx * 3) + 3
      9.times do |idy|
        pwr = (idy + 1) * 2
        x_line(2, pwr, pwx, board)
      end
    end

    10.times do |idy|
      next if idy == 0
      pwr = idy * 2
      swtch = idy * 3
      y_line(3, pwr, swtch, board)
    end
    
    7.times do |idy|
      next if idy == 0 || idy == 1
      pwr = idy * 2
      swtch = idy * 3
      y_line(3, swtch, pwr, board)
    end

    7.times do |idy|
      next if idy == 0 || idy == 1
      pwr = idy * 2
      swtch = idy * 6
      y_line(3, pwr, swtch, board)
    end
    board
  end

   def level_2(board)
    6.times do |idx|
      pwx = (idx * 3) + 3
      4.times do |idy|
        pwr = (idy + 1) * 2
        x_line(2, pwr, pwx, board)
      end
    end

    6.times do |idx|
      pwx = (idx * 3) + 22
      4.times do |idy|
        pwr = (idy + 1) * 2
        y_line(2, pwr, pwx, board)
      end
    end
    
    6.times do |idx|
      pwx = (idx * 3) + 3
      4.times do |idy|
        pwr = (idy + 6) * 2
        y_line(1, pwr, pwx, board)
      end
    end

    6.times do |idx|
      pwx = (idx * 3) + 22
      4.times do |idy|
        pwr = (idy + 6) * 2
        x_line(2, pwr, pwx, board)
      end
    end
    board
   end

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
