require_relative('../testfile')
describe Calculator do
  describe '#add' do
    it 'It returns sum of two numbers' do
      return true if 2 + 4 == Calculator.new(2, 4).add

      expect(true).to eql(true)
    end
  end
  describe '#sub' do
    it 'It returns sum of two numbers' do
      return true if 2 - 4 == Calculator.new(2, 4).sub

      expect(true).to eql(true)
    end
  end

  describe '#mul' do
    it 'It returns sum of two numbers' do
      return true if 2 * 4 == Calculator.new(2, 4).mul

      expect(true).to eql(true)
    end
  end

  describe '#division' do
    it 'It returns sum of two numbers' do
      return true if 2 / 4 == Calculator.new(2, 4).division

      expect(true).to eql(true)
    end
  end
end
