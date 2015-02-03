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

    it "returns an array if called on an array" do
      array = ["hallo", "rubycorns"]
      result = array.to_a
      expect(result).to eq ["hallo", "rubycorns"]
    end

    class MyArray
      # normally that should be the representation of the object that makes sense 
      def to_a
        ['torn', 'shoes']
      end
    end

    it "is used to convert custom objects to an array" do
     object =  MyArray.new
     expect(object.to_a).to eq ['torn', 'shoes']
    end
  end
end
