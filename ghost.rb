# frozen_string_literal: true

# require File.join(File.dirname(__FILE__), 'board')

# show me you moves...!
module Movement

end

# Ghosts... B0!!
class Ghost
  GHOSTS = { blinky: 'm', inky: 'm', pinky: 'm', clyde: 'm' }.freeze
  attr_reader :pos_y, :pos_x

  def initialize(pos_x, pos_y)
    @pos_x = pos_x
    @pos_y = pos_y
    @type = [:blinky, :inky, :pinky, :clyde].sample
  end

  # def ghosts_movement(ghost)
  #   # Tenemos que poner las coordenadas donde van a iniciar los fantasmas?
  #   case movement
  #   when 0
  #     Board.stay
  #   when 1..2
  #     Board.move_up_down
  #   when 3..4
  #     Movement.move_left_right
  #   end
  # end

  # def stay(equis, igriega, ghost)
  #   @board[equis][igriega] = GHOSTS[ghost]
  #   return [@x, @y]
  # end

  # def move_up(equis, igriega, ghost)
  #   @board[equis - 1][igriega] = GHOSTS[ghost]
  #   @board[equis][igriega] = '.'
  #   return [@x -1, @y]
  # end

  # def move_down(equis, igriega, ghost)
  #   @board[equis + 1][igriega] = GHOSTS[ghost]
  #   @board[equis][igriega] = '.'
  # end

  # def move_left(equis, igriega, ghost)
  #   @board[equis][igriega - 1] = GHOSTS[ghost]
  #   @board[equis][igriega] = '.'
  # end

  # def move_right(equis, igriega, ghost)
  #   @board[equis][igriega + 1] = GHOSTS[ghost]
  #   @board[equis][igriega] = '.'
  # end

  # def move_up_down(coord)
  #   coord == 1 ? move_up : move_down
  # end

  # def move_left_right
  #   coord == 3 ? move_left : move_right
  # end
end


