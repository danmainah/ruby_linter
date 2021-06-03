require_relative '../lib/lint'

stylecheck = Stylelint.new('testfile.rb')
puts stylecheck.check
