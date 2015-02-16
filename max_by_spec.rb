
describe 'max_by' do

  sweet_stuff = ['cheesecake', 'lemon cake', 'almond tarte', 'blondies']

  # it 'returns an enum when no block is given' do
  #   expect(sweet_stuff.max_by).to eq sweet_stuff.max_by
  # end

  it 'returns the maximum value from the given block' do
    expect(sweet_stuff.max_by { |nom| nom }).to eq 'lemon cake'
    expect(sweet_stuff.max_by { |nom| nom.length }).to eq 'almond tarte'
  end

  # it 'takes an optional argument that determines how many values are returned ' do
  #   expect(sweet_stuff.max_by(2) { |nom| nom }).to eq ['lemon cake', 'cheesecake']
  # end

end
