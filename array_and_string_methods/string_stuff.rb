class SimpleString
  attr_accessor :data

  def initialize(the_data)
    @data = the_data
  end

  def length(string)
    count = 0
    string.each do |s|
      count += 1
    end
    count
  end

  def end_with?(string)
    data[-1] == string
  end

  def upcase
    data.tr(('a'..'z').to_a.join, ('A'..'Z').to_a.join)
  end


end
