class Stack

  def initialize
    @input = []
  end

  def size
    @input.length
  end

  def empty?
    size == 0
  end

  def push(arg)
    @input << arg
  end

  def pop
    @input.pop
    @input
  end

end