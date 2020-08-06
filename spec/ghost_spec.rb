# frozen_string_literal: true

require File.join(File.dirname(__FILE__), '../ghost')

describe Ghost do
  ghost = Ghost.new(34, 17)

  it 'default position should be [x, y] = [34, 12] ' do
    expect(ghost.pos_x).to be(34)
    expect(ghost.pos_y).to be(17)
  end
end
