require 'rspec'
require './lib/bag'

describe Bag do
  it 'can create an empty bag' do
    bag = Bag.new
    expect(bag.empty?).to eq true
    expect(bag.size).to eq 0
  end

  it 'changes size when an item is added to a bag' do
    bag = Bag.new
    bag.add('One')
    expect(bag.empty?).to eq false
    expect(bag.size).to eq 1
  end

  it 'allows for iteration' do
    bag = Bag.new
    bag.add('One')
    bag.add('Two')
    bag.add('Three')
    bag.add('One')

    actual = []
    bag.each do |item|
      actual << item
    end

    expect(actual).to match_array(['One', 'Two', 'Three', 'One'])

  end
end