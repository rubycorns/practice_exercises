class Cake
  attr_reader :name

  def self.all
    ['Marmorkuchen', 'Cheesecake', 'Sachertorte'].map { |name| new(name) }
  end

  def initialize(name)
    @name = name
  end
end

describe 'All cakes' do
  subject { Cake.all }

  it 'have a name' do
    subject.each do |cake|
      expect(cake.name).to_not be_empty
    end
  end

  it 'are sorted by increasing tastyness' do
    # demo the use of reverse_each, although it doesn't really make
    # sense here:
    expect(subject.reverse_each.first.name).to eq('Sachertorte')

    # because it could be written simpler like that:
    expect(subject.last.name).to eq('Sachertorte')
  end
end
