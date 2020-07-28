# frozen_string_literal: true

# Principal board class where the game execution becomes fun!!
class Board
  def initialize
    initialize_board(20, '.')
  end

  def map
    @board.each do |row|
      row.each do |value|
        print value
      end
      puts"\n"
    end
  end

  def initialize_board(n, value)
    @board = []
    n.times do |row_index|
      row = []
      n.times { |column_index| row.push( (rand(1..2) % 2 == 0) ? value : '*')}
      @board << row
    end
    board_frames
  end

  def board_frames
    @board.each do |row|
      row.unshift('|')
      row.push('|')
    end
  end
end

map = Board.new
map.map
