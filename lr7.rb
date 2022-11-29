# frozen_string_literal: true

require 'securerandom'

# This
class DD
  @ar1 = []
  @array = []
  @minch = 9_999_999
  @min = 9_999_999
  @max = -9_999_999
  @max = 0
  @posl = 0
  @perv = 0
  @razn = 0
  @kol = 0
  @name = 0
  @index = 0
  @len = 0

  def self.file_f_edditor(ar11)
    File.open('lr7fileF.txt', 'w') do |f|
      f.puts ar11
    end
    puts 'el s nech index'
    DD.return_f_file
    @minch
  end

  def self.minnech
    return unless @index.even?

    print @index + 1
    print ': '
    puts @name
    @minch = @name.to_i if @name.to_i < @minch
  end

  def self.firstlast
    @perv = @name if @index.zero?
    @posl = @name if @index == (@array.length - 1)
  end

  def self.minmax
    @min = @name.to_i if @name.to_i < @min
    @max = @name.to_i if @name.to_i > @max
  end

  def self.prminch
    puts('minnech = ' + @minch.to_s + "\n\n")
  end

  def self.prmin_max
    puts('min = ' + @min.to_s)
    puts('max = ' + @max.to_s)
  end

  def self.prsum
    puts('sum = ' + (@min + @max).to_s + "\n\n")
  end

  def self.prper_pos
    puts('perv = ' + @perv.to_s)
    puts('posl = ' + @posl.to_s)
  end

  def self.prraz
    puts('razn = ' + (@perv.to_i - @posl.to_i).to_s + "\n\n")
    puts('Bolshe 10 otricat') if @kol > 10
  end

  def self.prall
    prminch
    prmin_max
    prsum
    prper_pos
    prraz
  end

  def self.return_f_file
    @array = File.readlines 'lr7fileF.txt'
    @array.each_with_index do |name, index|
      @name = name
      @index = index
      minnech
      minmax
      firstlast
      @kol += 1 if name.to_i.negative?
    end
    prall
    # end
  end

  def self.file_g_edditor
    File.open('lr7fileG.txt', 'w') do |g|
      File.open('lr7fileF.txt', 'r') do |_f|
        str = File.read 'lr7fileF.txt'
        # puts('sssssssssssssssss')
        # puts(str)
        g.puts str
      end
    end
  end

  def self.return_f
    File.open('lr7fileF.txt', 'r', &:gets)
  end

  def self.return_g
    File.open('lr7fileG.txt', 'r', &:gets)
  end
end
