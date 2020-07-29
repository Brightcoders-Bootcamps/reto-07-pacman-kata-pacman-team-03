# frozen_string_literal: true

GHOSTS = { blinky: 'm', inky: 'm', pinky: 'm', clyde: 'm' }.freeze
# Ghosts... B0!!
class Ghost
  attr_reader :pos_y, :pos_x

  def initialize(pos_x, pos_y)
    @pos_x = pos_x
    @pos_y = pos_y
    @type = %i[blinky inky pinky clyde].sample
  end

  def direction(value)
    case value
    when 'e'
      move_up
    when 'd'
      move_down
    when 's'
      move_left
    when 'f'
      move_right
    end
  end

  def move_up
    @pos_x -= 1
  end

  def move_down
    @pos_x += 1
  end

  def move_left
    @pos_y -= 1
  end

  def move_right
    @pos_y += 1
  end
end
