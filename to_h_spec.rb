require 'rspec'

describe Enumerable do
  let(:cake_rating) {[['Cheese Cake', 'awesome'], ['Maulwurfkuchen', 'ew']]}

  describe '#to_h' do
    it 'returns an empty hash on an empty array' do
      expect([].to_h).to eq({})
    end

    it 'returns a hash according to the tuples of arrays' do
      expect(cake_rating.to_h).to eq 'Cheese Cake' => 'awesome',
                                      'Maulwurfkuchen' => 'ew'
    end

    it 'calling to_a on the resulting hash should yield the original array' do
      original = cake_rating
      expect(original.to_h.to_a).to eq original
    end

    describe 'errornous conditions' do
      it 'raises an error for an array with just elements' do
        expect {['cheese cake', 'click torte'].to_h}.to raise_error
      end

      it 'raises an error when the sub arrays have less than 2 elements' do
        expect {[['cheese cake']].to_h}.to raise_error
      end

      it 'raises an error when the sub arrays have too many elements' do
        expect do
          [['cheese cake', 'maulwurf kuchen', 'plum cake']].to_h
        end.to raise_error
      end
    end
  end
end