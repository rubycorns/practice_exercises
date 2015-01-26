class FirstCake

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.all_da_cakes
    ['New York Cheesecake', 'Birthday Cake', 'Black Forest Cake', 'Ice Cream Cake', 'Fruit Cake' ].map do |name|
      new(name)
    end
  end
end

describe 'first cake' do
  subject { FirstCake.all_da_cakes }

  context '.all_da_cakes' do
    specify 'returns all da cakes!' do

      cake_array = []
      subject.each do |cake|
        cake_array << cake.name
      end

      expect(cake_array).to include 'Birthday Cake'
    end
  end

  context  '.first' do
    specify 'returns the first object in the array' do
      expect(subject.first.name).to eql 'New York Cheesecake'
    end

    specify 'does not return the last object in the array' do
      expect(subject.first.name).to_not eql 'Fruit Cake'
    end
  end

  context '.first(n)' do
    specify 'returns the first two objects in the array' do
      array = subject.first(2).map(&:name)
      expect(array).to eql ['New York Cheesecake', 'Birthday Cake']
    end

    specify 'returns the first three objects in the array' do
      array = subject.first(3).map(&:name)
      expect(array).to eql ['New York Cheesecake', 'Birthday Cake', 'Black Forest Cake']
    end

    specify 'does not return moar cake than is available' do
      array = subject.first(100).map(&:name)
      expect(array).to eql ['New York Cheesecake', 'Birthday Cake', 'Black Forest Cake', 'Ice Cream Cake', 'Fruit Cake' ]
    end
  end

end