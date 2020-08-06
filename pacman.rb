# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'ghost')
# Principal board class where the game execution becomes fun!!
class Pacman < Ghost
  attr_reader :avatar, :pos_x, :pos_y, :score

  def initialize
    default_position
    @avatar = 'v'
    @score = 0
  end

  def default_position
    @pos_x = 20
    @pos_y = 10
  end

  def update_score
    @score += 1
  end

  def direction(value)
    if ['e', '!d'].include?(value)
      move_up(value)
      @avatar = 'v'
    elsif ['d', '!e'].include?(value)
      move_down(value)
      @avatar = '^'
    elsif ['s', '!f'].include?(value)
      move_left(value)
      @avatar = '>'
    elsif ['f', '!s'].include?(value)
      move_right(value)
      @avatar = '<'
    end
  end

  def evaluate_board_position(value)
    actual_value = @board[@pos_y][@pos_x]
    return reset_movement(value) if [9553.chr(Encoding::UTF_8), 9552.chr(Encoding::UTF_8)].include?(actual_value)

    update_score if actual_value == '.'
  end

  def reset_movement(value)
    direction('!' + value)
  end

  def move_yourself(value, board = nil)
    @board = board unless board.nil?
    direction(value)
  end
end
