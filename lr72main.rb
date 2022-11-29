# frozen_string_literal: true

require_relative 'lr72'

puts 'Enter X1'
fir_p_x = gets.chomp.to_i
puts 'Enter Y1'
fir_p_y = gets.chomp.to_i

kor = Kord.new(fir_p_x, fir_p_y)

kor.print

puts 'Enter radius'
rad = gets.chomp.to_f

okr = Okr.new(fir_p_x, fir_p_y, rad)

okr.print
#
# puts Kord.subclasses
