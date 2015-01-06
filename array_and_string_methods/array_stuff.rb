class SimpleArray
  attr_accessor :data

  def initialize(the_data)
    @data = the_data
  end

  def first
    data[0]
  end

  def last
    data[-1]
  end

  def join
    new_string = ""
    data.each do |d|
      new_string += d.to_s
    end
    new_string
  end

  def count(input)
    tally = 0
    data.each do |d|
      tally += 1 if d == input
    end
    tally
  end
end

# an_array = SimpleArray.new(['a', 'b', 'c'])
