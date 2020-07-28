# frozen_string_literal: true

# Principal board class where the game execution becomes fun!!
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
      'v'
    elsif value == 'd'
      '^'
    elsif value == 's'
      '>'
    elsif value == 'f'
      '<'
    end
  end
end
