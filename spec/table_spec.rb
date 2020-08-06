# frozen_string_literal: true

require File.join(File.dirname(__FILE__), '../table')

describe Table do
  table = Table.new

  it 'should create 10 ghosts' do
    expect(table.ghosts.count).to be(10)
  end

  it 'pacman should look up' do
    expect(table.pacman.avatar).to be('v')
  end

  it 'board should be 42x22 including frames' do
    expect(table.board.count).to be(22)
    expect(table.board.first.count).to be(42)
  end

  it 'should print the board it contains' do
    expect(table.to_console).to be(table.board)
  end
end
