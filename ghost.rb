# frozen_string_literal: true

GHOSTS = { blinky: 'm', inky: 'm', pinky: 'm', clyde: 'm' }.freeze
DECISION = { 1 => 'e', 2 => 'd', 3 => 's', 4 => 'f' }.freeze
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
    return @pos_y = 20 if (@pos_y - 1).zero?

    @pos_y -= 1
  end

  def move_down
    return @pos_y = 1 if @pos_y + 1 == 21

    @pos_y += 1
  end

  def move_left
    return @pos_x = 40 if (@pos_x - 1).zero?

    @pos_x -= 1
  end

  def move_right
    return @pos_x = 1 if @pos_x + 1 == 41

    @pos_x += 1
  end

  def move_the_ghost
    random_movement = rand(1..4)
    direction(DECISION[random_movement])
  end
end

# ghost = Ghost.new(5,6)
# print ghost.move_the_ghost
