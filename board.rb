# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'ghost')
require File.join(File.dirname(__FILE__), 'pacman')
# Principal board class where the game execution becomes fun!!
class Board
  def initialize
    @pacman = Pacman.new
    @ghosts = 10.times.map { Ghost.new(rand(1..40), rand(1..20)) }
    @board = initialize_board(20)
    @score = 0
  end

  def to_console
    @board.each do |row|
      row.each { |value| print value }
      puts "\n"
    end
  end

  def initialize_board(size)
    board = Array.new(size) { Array.new(size * 2, '.') }
    board = board_frames(board)
    6.times { board = maze(board) }
    update_players(board, 'm')
  end

  def update_players(board, value)
    @ghosts.each do |ghost|
      actual_value = board[ghost.pos_y][ghost.pos_x]
      if actual_value != 9553.chr(Encoding::UTF_8) && actual_value != 9552.chr(Encoding::UTF_8)
        board[ghost.pos_y][ghost.pos_x] = value
      end
    end
    board[@pacman.pos_y][@pacman.pos_x] = @pacman.avatar
    board
  end

  def maze(board)
    wall_y = 9553.chr(Encoding::UTF_8)
    wall_x = 9552.chr(Encoding::UTF_8)
    rand_idy = rand(2..16)
    rand_idx = rand(2..36)
    4.times do |idx|
      board[rand_idy][rand_idx + idx] = wall_x
      board[rand_idy + idx][rand_idx] = wall_y
    end
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
    update_players(@board, '.')
    @ghosts.each(&:move_yourself)
    update_players(@board, 'm')
    to_console
  end
end

map = Board.new
map.to_console

i = 0
while i < 10
  map.update_board
  i += 1
end
