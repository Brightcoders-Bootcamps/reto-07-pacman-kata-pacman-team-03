# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'table')

game = Table.new
game.to_console

loop do
  move = STDIN.gets.chomp
  game.update_board(move)
  break if ['quit', ''].include?(move)
end
