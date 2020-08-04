# frozen_string_literal: true

GHOSTS = { blinky: 'm', inky: 'm', pinky: 'm', clyde: 'm' }.freeze
DIRECTION = { 1 => 'e', 2 => 'd', 3 => 's', 4 => 'f' }.freeze
# Ghosts... B0!!
class Ghost
  attr_reader :pos_y, :pos_x

  def initialize(pos_x, pos_y)
    @pos_x = pos_x
    @pos_y = pos_y
    @type = %i[blinky inky pinky clyde].sample
    @value = ''
  end

  def direction(value)
    move_up(value) if ['e', '!d'].include?(value)
    move_down(value) if ['d', '!e'].include?(value)
    move_left(value) if ['s', '!f'].include?(value)
    move_right(value) if ['f', '!s'].include?(value)
  end

  def move_up(value)
    @pos_y -= 1
    @pos_y = 20 if @pos_y.zero?
    evaluate_board_position(value)
  end

  def move_down(value)
    @pos_y += 1
    @pos_y = 1 if @pos_y == 21
    evaluate_board_position(value)
  end

  def move_left(value)
    @pos_x -= 1
    @pos_x = 40 if @pos_x.zero?
    evaluate_board_position(value)
  end

  def move_right(value)
    @pos_x += 1
    @pos_x = 1 if @pos_x == 41
    evaluate_board_position(value)
  end

  def evaluate_board_position(value)
    actual_value = @board[@pos_y][@pos_x]
    reset_movement(value) if [9553.chr(Encoding::UTF_8), 9552.chr(Encoding::UTF_8)].include?(actual_value)
  end

  def reset_movement(value)
    direction('!' + value)
    move_yourself
  end

  def move_yourself(board = nil)
    @board = board unless board.nil?
    direction(DIRECTION[rand(1..4)])
  end
end
