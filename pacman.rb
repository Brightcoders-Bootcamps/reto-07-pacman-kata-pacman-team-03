# frozen_string_literal: true

class Pacman
  def initialize
    @lives = 5
    @score = 0
  end

  def add_score
    @score += 1
  end

  def direction(value)
    if value == 'e'
      return 'v'
    elsif value == 'd'
      return '^'
    elsif value == 's'
      return '>'
    elsif value == 'f'
      return '<'
    end
  end
end