require 'rspec'

describe Enumerable do
  describe '#to_h' do
    it 'returns an empty hash on an empty array' do
      expect([].to_h).to eq({})
    end

    it 'returns a hash according to the tuples of arrays' do
      expect([[:a, 1], [:b, 2]].to_h).to eq a: 1, b: 2
    end

    it 'calling to_a on the resulting hash should yield the original array' do
      original = [['Hi', 'Hej'], ['Thanks', 'Tack']]
      expect(original.to_h.to_a).to eq original
    end

    describe 'errornous conditions' do
      it 'raises an error for an array with just elements' do
        expect {[1, 2, 3].to_h}.to raise_error
      end

      it 'raises an error when the sub arrays have less than 2 elements' do
        expect {[[1]].to_h}.to raise_error
      end

      it 'raises an error when the sub arrays have too many elements' do
        expect {[[1, 2, 3]].to_h}.to raise_error
      end
    end
  end
end