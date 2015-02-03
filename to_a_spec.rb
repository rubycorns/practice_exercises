require 'rspec'

class Tam

  attr_reader :obsession, :face, :intelligence

  def initialize(obsession, face, intelligence)
    @obsession = obsession
    @face = face
    @intelligence = intelligence
  end

  def characteristics
    {
      obsessions: @obsession,
      face: @face,
      intelligence: @intelligence
    }
  end


  describe '#to_a' do
    let(:tarn_shoes) {Tam.new("kitchen towelz", "dumb cake face", false)}

    it "returns an array" do
      result = tarn_shoes.characteristics.to_a
      expect(result).to eq [[:obsessions, "kitchen towelz"], [:face, "dumb cake face"], [:intelligence, false]]      
    end
  end
end
