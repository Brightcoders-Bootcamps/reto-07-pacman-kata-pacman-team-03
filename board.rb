# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'ghost')
require File.join(File.dirname(__FILE__), 'pacman')
# Principal board class where the game execution becomes fun!!
class Board
  def initialize
    @pacman = Pacman.new(8, 18)
    @ghosts = 4.times.map { Ghost.new(rand(1..38), rand(1..18)) }
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
    board = add_players(board, size)
    board_frames(board)
  end

  def add_players(board, size)
    @ghosts.each { |ghost| board[ghost.pos_y][ghost.pos_x] = 'm' }
    board[size / 2][size] = @pacman.avatar
    board
  end

  def board_frames(board)
    bar = 9608.chr(Encoding::UTF_8)
    board.each { |row| row.unshift(bar).push(bar) }
    board.first.fill(9604.chr(Encoding::UTF_8))
    board.last.fill(9600.chr(Encoding::UTF_8))
    board
  end

  def update_board
    update_ghosts_position
    old_board = @board
    update_players()
    to_console
  end

  def update_players
    @ghosts.each { |ghost| puts "#{@board[ghost.pos_y][ghost.pos_x]}"; @board[ghost.pos_y][ghost.pos_x] = 'm' }
    # board[size / 2][size] = @pacman.avatar
  end

  def update_ghosts_position
    @ghosts.map! { |ghost| ghost.move_the_ghost; ghost }
  end
end

map = Board.new
map.to_console
map.update_board
