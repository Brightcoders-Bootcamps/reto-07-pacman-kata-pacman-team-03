# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'ghost')
require File.join(File.dirname(__FILE__), 'pacman')
require File.join(File.dirname(__FILE__), 'maze')
# Principal board class where the game execution becomes fun!!
class Board
  attr_reader :pacman
  def initialize
    @pacman = Pacman.new
    @ghosts = 10.times.map { Ghost.new(rand(1..40), rand(1..20)) }
    @board = initialize_board(20)
    @score = 0
  end

  def to_console
    puts "\n\t\t\t\t\t\t SCORE: #{@pacman.score}"
    @board.each do |row|
      row.each { |value| print value }
      puts "\n"
    end
  end

  def board_frames(board)
    bar = 9608.chr(Encoding::UTF_8)
    arr = Array.new(42, 9604.chr(Encoding::UTF_8))
    arr2 = Array.new(42, 9600.chr(Encoding::UTF_8))
    board.each { |row| row.unshift(bar).push(bar) }
    board.unshift(arr).push(arr2)
    board
  end

  def initialize_board(size)
    board = Array.new(size) { Array.new(size * 2, '.') }
    board = board_frames(board)
    board = Maze.new.level_2(board)
    update_players(board, 'm')
  end

  def update_players(board, value)
    # @ghosts.each { |ghost| board[ghost.pos_y][ghost.pos_x] = value == '.' ? ' ' : value }
    @ghosts.each { |ghost| board[ghost.pos_y][ghost.pos_x] = value }
    board[@pacman.pos_y][@pacman.pos_x] = value == '.' ? ' ' : @pacman.avatar
    board
  end

  def update_board(value)
    update_players(@board, '.')
    @ghosts.each { |ghost| ghost.move_yourself(@board) }
    @pacman.move_yourself(value, @board)
    update_players(@board, 'm')
    to_console
  end
end

map = Board.new
map.to_console

loop do
  aux = STDIN.gets.chomp
  map.update_board(aux)
  break if (aux == "\n") || (aux == "\r")
end
