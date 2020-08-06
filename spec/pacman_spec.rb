# frozen_string_literal: true

require File.join(File.dirname(__FILE__), '../pacman')

describe Pacman do
  pacman = Pacman.new

  it 'default position should be [x, y] = [20, 10] ' do
    expect(pacman.pos_x).to be(20)
    expect(pacman.pos_y).to be(10)
  end

  it 'score should be initialized in zero' do
    expect(pacman.score).to be(0)
  end

  it 'update_score sum 1 to score each time is called' do
    12.times { pacman.update_score }
    expect(pacman.score).to be(12)
  end
end
