class Queue

  def initialize
    @input = []
  end

  def empty?
    size == 0
  end

  def size
    @input.length
  end

  def enqueue(item)
    @input << item
  end

  def dequeue
    @input.shift
    @input
  end

  def each(&block)
    @input.each do |item|
      block.call(item)
    end
  end
end