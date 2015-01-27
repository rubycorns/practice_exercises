#rspec.info
require 'rspec'

describe Enumerable do
  describe "each_slice" do
    context "with numbers" do

      subject do
        (1..31).each_slice(7)
      end

      it "converts to array and slices it" do
        expect(subject.to_a.length).to eq(5)
      end

      it "puts the right number of numbers in each array item" do
        expect(subject.to_a[0].length).to eq(7)
        expect(subject.to_a[1].length).to eq(7)
        expect(subject.to_a[2].length).to eq(7)
        expect(subject.to_a[3].length).to eq(7)
        expect(subject.to_a[4].length).to eq(3)
      end

      it "calls a number more than the number of array items" do
        expect([1, 2].each_slice(5).to_a).to eq [[1, 2]]
      end
    end
  end
end

# Plus, everyone should write tests and a real case (as in the real world)
#   implemention with a pull request to this repo
#   c
#   Here is the randomised homework:
#
#   Sara
#   :each_slice
#
#   Brigitte
#   :detect / :find
#
#   Lisa
#   :include?
#
#   Tobi
#   :to_h
#
#   Tam
#   :first
#
#   Susanne
#   :to_a
#
#   Til
#   :reverse_each
#
#   Also, mind the edge cases
#
#   Why would I want to use this method?
#
#   to return a month broken down into weeks; a calendar for instance.
#
#   edge case
#     - passing in no arguments
#     - passing in the wrong kind of arguments
# #     - trying to slice something that is less than the interval given/argument
# cool things about each_slice
# it's an enumerator, which means you can combine it with all enumerable methods