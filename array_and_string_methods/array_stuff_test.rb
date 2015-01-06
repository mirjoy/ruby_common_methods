require 'minitest/autorun'
require 'minitest/pride'
require_relative 'array_stuff'

class ArrayMethodsTest < Minitest::Test
  attr_accessor :array

  def setup
    @array = SimpleArray.new([])
  end

  def test_it_returns_first
    array.data = ['a', 'b', 'c']
    assert_equal "a", array.first
  end

  def test_it_returns_last
    array.data = ['a', 'b', 'c']
    assert_equal "c", array.last
  end

  def test_it_joins
    array.data = ['a', 'b', 'c']
    assert_equal "abc", array.join
  end

  def test_it_counts
    array.data = ['a', 'b', 'c', 'c']
    assert_equal 2, array.count('c')
  end

end
