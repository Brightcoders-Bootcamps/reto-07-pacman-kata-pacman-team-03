# frozen_string_literal: true

# Limites para agregar figuras y no romper las paredes: Y = 17, X = 37
class Maze
  attr_reader :wall_x, :wall_y

  def initialize
    @wall_y = 9553.chr(Encoding::UTF_8)
    @wall_x = 9552.chr(Encoding::UTF_8)
  end

  def generic_line(period, idx_offset, idy_offset, arg, flag)
    period.first.times do |idx|
      pwx = (idx * 3) + idx_offset
      period.last.times do |idy|
        pwr = (idy + idy_offset) * 2
        flag == 'x' ? x_line(arg, pwr, pwx) : y_line(arg, pwr, pwx)
      end
    end
  end

  def generic_form(var, switch_mult, flag)
    var.times do |idy|
      next if [0, 1].include?(idy)

      pwr = idy * 2
      switch = idy * switch_mult
      flag == 'y' ? y_line(3, pwr, switch) : y_line(3, switch, pwr)
    end
  end

  def level_1(board)
    @board = board
    generic_line([12, 9], 3, 1, 2, 'x')
    generic_form(10, 3, 'y')
    generic_form(7, 3, 'x')
    generic_form(7, 6, 'y')
    @board
  end

  def level_2(board)
    @board = board
    generic_line([6, 4], 3, 1, 2, 'x')
    generic_line([6, 4], 22, 1, 2, 'y')
    generic_line([6, 4], 3, 6, 1, 'y')
    generic_line([6, 4], 22, 6, 2, 'x')
    @board
  end

  def basic_simetric_shape(size, add_y, add_x, board)
    size.times do |idx|
      board[add_y][add_x - idx] = @wall_x
      board[add_y - idx][add_x] = @wall_y
    end
    board
  end

  def x_line(size, add_y, add_x)
    size.times { |idx| @board[add_y][add_x + idx] = @wall_x }
  end

  def y_line(size, add_y, add_x)
    size.times { |idy| @board[add_y + idy][add_x] = @wall_y }
  end
end
