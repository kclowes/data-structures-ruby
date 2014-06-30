require 'rspec'
require './lib/stack'

describe Stack do
  it 'has methods called size and empty' do
    stack = Stack.new
    expect(stack.size).to eq 0
    expect(stack.empty?).to eq true
  end

  it 'will add the item to the stack' do
    stack = Stack.new
    expect(stack.push('One')).to eq ['One']
    expect(stack.size).to eq 1
    expect(stack.empty?).to eq false
  end

  it 'will take off the last pushed item' do
    stack = Stack.new
    stack.push('One')
    stack.push('Two')

    expect(stack.size).to eq 2

    expect(stack.pop).to eq ['One']
    expect(stack.size).to eq 1
    expect(stack.empty?).to eq false
  end
end