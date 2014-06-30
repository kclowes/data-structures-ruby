require 'rspec'
require './lib/queue'

describe Queue do
  it 'can tell if the queue is empty' do
    queue = Queue.new
    expect(queue.empty?).to eq(true)
    expect(queue.size).to eq 0
  end

  it 'can put an item in the queue' do
    queue = Queue.new
    queue.enqueue('One')

    expect(queue.empty?).to eq false
    expect(queue.size).to eq 1
  end

  it 'can dequeue an item' do
    queue = Queue.new
    queue.enqueue('One')
    queue.enqueue('Two')

    expect(queue.dequeue).to eq ['Two']
    expect(queue.size).to eq 1
  end

  it 'allows for iteration' do
    queue = Queue.new
    queue.enqueue('One')
    queue.enqueue('Two')
    queue.enqueue('Three')
    queue.enqueue('One')

    actual = []
    queue.each do |item|
      actual << item
    end

    expect(actual).to eq(['One', 'Two', 'Three', 'One'])

  end
end