# frozen_string_literal: true
require File.join(File.dirname(__FILE__), 'board')
# show me you moves...!
class Movement
  def stay
    
  end
end

# Ghosts... B00‼
class Ghosts

GHOSTS = { blinky: 'm', inky: 'm', pinky: 'm', clyde: 'm'}
  def blinky
    movement = rand(0..4)
    case movement
    when 0
      Movement.stay
    when 1..2
      Movement.move.up_down
    when 3..4
      Movement.move_left_right
    end
  end

  def pinky
  end

  def inky
  end

  def clyde
  end
end
