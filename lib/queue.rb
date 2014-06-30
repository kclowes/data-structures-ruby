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
end