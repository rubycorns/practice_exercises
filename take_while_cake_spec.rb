# take_while

# Passes elements to the block until the block returns nil or false, then stops
# iterating and returns an array of all prior elements

# if no block is given, an enumerator is returned instead

describe 'TakeWhileCake' do

  subject { ['cheese cake', 'carrot cake', 'white chocolate brownie cake', 'apple pie', 'sad unincluded cake'] }

  let(:cakes) { subject.take_while { |m| m.include? 'cake' } }

  context 'returns all cakes with the name cake in them' do
    specify 'except for the last cake' do
      expect(cakes).to eql ['cheese cake', 'carrot cake', 'white chocolate brownie cake']
    end

    specify 'does not return the sad cake' do
      expect(cakes).to_not include 'sad unincluded cake'
    end

    specify 'does not return apple pie' do
      expect(cakes).to_not include 'apple pie'
    end

    specify 'is an enumerator' do
      expect(cakes.is_a? Enumerator).to be false
    end
  end

  context 'when nothing is passed in' do

    specify 'returns an enumerator' do
      expect(subject.take_while.is_a? Enumerator).to be true
    end

    specify 'returns first element of array' do # is this called something like an enumerator array?
      expect(subject.take_while.to_a).to eql ['cheese cake']
    end

  end

  context 'with an empty array' do

    specify 'returns an enumerator' do
      expect(subject.take_while.is_a? Enumerator).to be true
    end

    specify 'returns an empty array' do # is this called something like an enumerator array?
      expect([].take_while.to_a).to eql []
    end
  end
end
