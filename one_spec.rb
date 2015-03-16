# one?
# Passes each element of the collection to the given block. 


describe 'TheOneAndOnly' do
	subject {['cherry cake', 'Frankfurter Kranz', 'plum cake', 'double chocolate mud cake', 'Kalter Hund']}

	favourite_cake = 'double chocolate mud cake'

	# Returns true if the block returns true exactly once. 
	it 'checks for favourite cake' do
		expect(subject.one? {|cake| cake == favourite_cake}).to be true
	end

	it 'checks if cake assortment has exactly one cake containing the word cake in its name' do
		expect(subject.one? {|cake| cake.include? 'cake'}).to be false
	end

	# If the block is not given, one? will return true only if exactly one of the collection members is true.
	it 'shows that more than one item is true' do
		expect(subject.one?).to be false
	end

	it 'checks if exactly one item is true' do
		expect([nil, 'chocolate cake', false].one?).to be true
	end
###################
# difference between be true and be_true / be false and be_false?
end
