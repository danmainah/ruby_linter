require 'colorize'
require_relative('../lib/stylelint')
class Stylelint
  include Lintcheck

  def initialize(file_path)
    @file_path = file_path
    @errors = []
  end

  def check
    index = 0
    File.foreach(@file_path).each do |line|
      index += 1
      empty_line(line, index)
      check_line_length(line, index)
      empty_start_line(line, index)
      empty_end_line(line, index)
      check_trailing_spaces(line, index)
    end

    if @errors.length.zero?
      @errors << 'All checks have succefully passed ! No errors detected '.colorize(:green)
    else
      @errors.sort { |el1, el2| el2 <=> el1 }
    end
  end
end
