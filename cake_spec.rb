
class Cake

  attr_reader :icing, :baked_at

  def initialize(icing = nil, sprinkles: nil, fruit: nil, baked_at: Time.now)
    @icing = icing
    @baked_at = baked_at
  end

  # def icing
  #   @icing
  # end

end

describe 'cake' do

  subject { Cake.new('chocolate') }

  it 'is baked at now' do
    expect(subject.baked_at.to_i).to eq Time.now.to_i
  end

  it 'has specified icing' do
    expect(subject.icing).to eq 'chocolate'
  end


end
