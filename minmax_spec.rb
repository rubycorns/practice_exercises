require 'rspec'

describe Enumerable do
  describe '#minmax' do
    let(:cakes) {['new york cheese cake', 'apple cake', 'zoo cake']}

    it 'returns the minimum element and the maximum element' do
      expect(cakes.minmax).to eq ['apple cake', 'zoo cake']
    end

    it 'can be adjusted with a block' do
      expect(cakes.minmax{|a, b| a.length <=> b.length}).to eq ['zoo cake', 'new york cheese cake']
    end

    it 'returns [nil, nil] for an empty array' do
      expect([].minmax).to eq [nil, nil]
    end

    it 'returns [element, element] for a one element array' do
      expect(['cake'].minmax).to eq ['cake', 'cake']
    end
  end
end