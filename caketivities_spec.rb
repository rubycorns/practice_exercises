require 'rspec'

class Caketivities
  attr_reader :activity

  def self.all
    ["bake", "decorate", "eat", "throw", "send", "sell", "gift"].map { |activity| new(activity) }
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
    expect(@caketivities_array).to eq ["bake", "decorate", "eat", "throw", "send", "sell", "gift"]
  end

  it "finds the first activity which has more than 3 letters" do
    act = @caketivities_array.find { |c| c.length > 3 }
    expect(act).to eq "bake"
  end

  it "returns nil when checking for something nonexistant" do
    act = @caketivities_array.find { |c| c.length > 100 }
    expect(act).to be_nil
  end

  it 'returns whatever ifnone is if it finds nothing' do
    act = @caketivities_array.find(proc {'OH HAY TAM'}) { |c| c.length < 1}
    expect(act).to eq 'OH HAY TAM'
  end
end