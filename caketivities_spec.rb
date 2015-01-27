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

  it "finds the first activity which has more than 4 letters" do
    @caketivities_array.find { |c| c.length > 4 }
    expect(c.activity).to eq "decorate"
  end
end