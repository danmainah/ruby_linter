require_relative '../lib/lint'
require_relative '../lib/stylelint'
describe Stylelint do
  let(:linter) { Stylelint.new('../spec/testfile') }
  describe '#check_trailing_spaces' do
    it 'checks if there are trailing spaces ' do
      r = linter.send(:check_trailing_spaces, '{}', 10)
      expect(r).not_to eql('Line 10 ends with a trailing white space')
    end
  end

  describe '#empty_line' do
    it 'checks if there are trailing spaces ' do
      r = linter.send(:empty_line, '{}', 9)
      expect(r).not_to eql('Empty line on line 9')
    end
  end

  describe '#empty_end_line' do
    it 'checks if there are trailing spaces ' do
      r = linter.send(:empty_end_line, '{}', 22)
      expect(r).not_to eql('Add an empty line after line  23')
    end
  end

  describe '#check_line_length' do
    it 'checks if there are trailing spaces ' do
      r = linter.send(:check_line_length, '', 4)
      expect(r).not_to eql('Line 4 it too long make it shorter')
    end
  end

  describe '#empty_start_line' do
    it 'checks if there are trailing spaces ' do
      r = linter.send(:empty_start_line, '', 4)
      expect(r).not_to eql('Extra empty line detected at the beginning')
    end
  end
end
