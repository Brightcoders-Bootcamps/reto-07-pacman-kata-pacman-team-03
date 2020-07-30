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

  def rest_lives
    @lives -= 1
  end

  def direction(value)
    case value
    when 'e'
      @avatar = 'v'
    when 'd'
      @avatar = '^'
    when 's'
      @avatar = '>'
    when 'f'
      @avatar = '<'
    else
      puts "INVALID OPTION: #{value}"
    end
  end
end
