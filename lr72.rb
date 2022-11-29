# frozen_string_literal: true

# This
class Kord
  def initialize(fir_p_x, fir_p_y)
    @first_point = [fir_p_x, fir_p_y]
  end

  def print
    puts "first_point = #{@first_point}"
  end
end

# This
class Okr < Kord
  def initialize(fir_p_x, fir_p_y, radius)
    super(fir_p_x, fir_p_y)
    @rad = radius
  end

  def print
    puts "first_point = #{@first_point}"
    puts "radius = #{@rad}"
  end
end
