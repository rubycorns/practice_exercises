class ChocolateBar
  attr_reader :ingredients

  def initialize(ingredients)
    @ingredients = ingredients
  end

end

describe 'Snickers' do

  subject { ChocolateBar.new( { chocolate: true, peanuts: true, caramel: true } ) }

  it 'contains chocolate' do
    expect(subject.ingredients.include? :chocolate).to eq true
  end

  it 'does not contain coco' do
    expect(subject.ingredients.include? :coco).to eq false
  end

end

