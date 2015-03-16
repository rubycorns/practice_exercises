require 'rspec'

class Caketivities
  attr_reader :activity

  def self.all
    ["eat", "send", "decorate", "throw", "sell", "gift", "bake", "shoplift"].map { |activity| new(activity) }
  end

  def initialize(activity)
    @activity = activity
  end
end

describe "Caketivities" do 
  subject {Caketivities.all}

  before do
    @caketivities_array = []
    subject.each do |cake|
     @caketivities_array << cake.activity
    end
  end

  it "has all caketivities in an array" do
    expect(@caketivities_array).to eq ["eat", "send", "decorate", "throw", "sell", "gift", "bake", "shoplift"]
  end

  it "finds the first activity which has more than 3 letters" do
    act = @caketivities_array.find { |c| c.length > 3 }
    expect(act).to eq "send"
  end

  it "returns nil when checking for something nonexistant" do
    act = @caketivities_array.find { |c| c.length > 100 }
    expect(act).to be_nil
  end

  it 'returns whatever ifnone is if it finds nothing' do
    act = @caketivities_array.find(proc {'OH HAY TAM'}) { |c| c.length < 1}
    expect(act).to eq 'OH HAY TAM'
  end
###################################################################################################

  it 'returns the shortest and the longest caketivity' do
    mima = @caketivities_array.minmax_by {|c| c.length}
    expect(mima).to eq ['eat', 'decorate']
  end

  it 'returns the first and the last caketivity when sorted alphabetically' do
    mima = @caketivities_array.sort.minmax_by {|x| x }
    expect(mima).to eq ['bake', 'throw']
  end

  # it 'returns the two caketivities with the min and the max number of the letter l in them' do
  #   #mima = @caketivities_array.sort.minmax_by {|x| x.count.include?("l") }
  #   expect(mima).to eq ['shoplift', 'sell']
  end
end