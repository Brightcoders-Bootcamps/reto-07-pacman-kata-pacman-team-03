# frozen_string_literal: true

require File.join(File.dirname(__FILE__), '../board')

describe Board do
  board = Board.new
  describe 'update_board' do
    context 'Se a creado board...'
    it '...y se actualizan las entidades' do
      value = 'e'
      board.update_board(value)

      expect(@ghost).to be(10)

    end
  end
end