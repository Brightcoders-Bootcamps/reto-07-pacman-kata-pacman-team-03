# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'ghost')
require File.join(File.dirname(__FILE__), 'pacman')
# Principal board class where the game execution becomes fun!!
class Board
  def initialize
    @pacman = Pacman.new
    @ghosts = 10.times.map { Ghost.new(rand(1..40), rand(1..20)) }
    @board = initialize_board(20, '.')
    @score = 0
  end

  def to_console
    @board.each do |row|
      row.each { |value| print value }
      puts "\n"
    end
  end

  def initialize_board(size, value)
    board = []
    size.times do
      row = []
      (size * 2).times { row.push((rand(1..2) % 2).zero? ? value : '*') }
      board << row
    end
    board = board_frames(board)
    add_players(board)
  end

  def add_players(board)
    @ghosts.each { |ghost| board[ghost.pos_y][ghost.pos_x] = 'm' }
    board[@pacman.pos_y][@pacman.pos_x] = @pacman.avatar
    board
  end

  def board_frames(board)
    bar = 9608.chr(Encoding::UTF_8)
    arr = Array.new(42, 9604.chr(Encoding::UTF_8))
    arr2 = Array.new(42, 9600.chr(Encoding::UTF_8))
    board.each { |row| row.unshift(bar).push(bar) }
    board.unshift(arr).push(arr2)
    board
  end

  def update_board
    modify_players('.')
    @ghosts.each(&:move_the_ghost)
    modify_players('m')
    to_console
  end

  def modify_players(value)
    @ghosts.each { |ghost| @board[ghost.pos_y][ghost.pos_x] = value }
  end
end

map = Board.new
map.to_console
map.update_board
