module Lintcheck
  def check_trailing_spaces(line, index)
    return unless !line.strip.empty? && line[-2] == ' '

    @errors << "Line #{index} ends with a trailing white space".colorize(:red)
  end

  def empty_line(line, index)
    @errors << "Empty line on line #{index}".colorize(:red) if line.strip.empty?
  end

  def empty_end_line(line, index)
    @errors << "Add an empty line after line  #{index}".colorize(:red) if line.end_with?('end')
  end

  def check_line_length(line, index)
    return unless line.length > 50

    @errors << "Line #{index} it too long make it shorter".colorize(:red)
  end

  def empty_start_line(line, _index)
    return unless line.strip.split.first.eql?('class')

    @errors << 'Extra empty line detected at the beginning'
  end
end
