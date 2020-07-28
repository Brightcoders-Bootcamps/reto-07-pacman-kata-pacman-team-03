# frozen_string_literal: true
require 'pry'
require File.join(File.dirname(__FILE__), 'ghost')
# Principal board class where the game execution becomes fun!!
class Board
  def initialize
    @ghosts = 10.times.map { Ghost.new(rand(1..9), rand(1..9)) }
    @board = initialize_board(20, '.')
  end

  def map
    @board.each do |row|
      row.each { |value| print value }
      puts "\n"
    end
  end

  def initialize_board(height, value)
    board = []
    height.times do
      row = []
      (height * 2).times { row.push((rand(1..2) % 2).zero? ? value : '*') }
      board << row
    end
    board = add_ghosts(board)
    board_frames(board)
  end

  def add_ghosts(board)
    @ghosts.each do |ghost|
      x = ghost.pos_x
      y = ghost.pos_y
      board[x][y] = 'm'
    end
    board
  end

  def board_frames(board)
    bar = 9608.chr(Encoding::UTF_8)
    board.each do |row|
      row.unshift(bar).push(bar)
    end
    board.first.fill(9604.chr(Encoding::UTF_8))
    board.last.fill(9600.chr(Encoding::UTF_8))
    board
  end
end

map = Board.new
map.map
