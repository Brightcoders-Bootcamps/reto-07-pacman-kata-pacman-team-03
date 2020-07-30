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
    @pos_y -= 1
  end

  def move_down
    @pos_y += 1
  end

  def move_left
    @pos_x -= 1
  end

  def move_right
    @pos_x += 1
  end

  def move_the_ghost
    random_movement = rand(1..4)
    direction(DECISION[random_movement])
    puts "#{@pos_y}, #{@pos_x}"
  end
end

# ghost = Ghost.new(5,6)
# print ghost.move_the_ghost
