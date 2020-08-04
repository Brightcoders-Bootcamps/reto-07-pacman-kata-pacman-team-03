# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'ghost')
# Principal board class where the game execution becomes fun!!
class Pacman < Ghost
  attr_accessor :pos_x, :pos_y
  attr_reader :avatar

  def initialize
    @pos_x = 20
    @pos_y = 10
    @lives = 5
    @avatar = 'v'
  end

  def default_position
    @pos_x = 20
    @pos_y = 10
  end

  def rest_lives
    @lives -= 1
  end

  def direction(value)
    case value
    when 'e'
      move_up
      @avatar = 'v'
    when 'd'
      move_down
      @avatar = '^'
    when 's'
      move_left
      @avatar = '>'
    when 'f'
      move_right
      @avatar = '<'
    end
  end

  def evaluate_neighbours(idx, idy, pacman)
    if pacman == 'e'
      board[idy - 1][idx] == 'm' ? kill(pacman) : direction(pacman)
    elsif pacman == 'd'
      board[idy][idx-1] == 'm' ? kill(pacman) : direction(pacman)
    end
  end

end
