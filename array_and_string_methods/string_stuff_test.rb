require 'minitest/autorun'
require 'minitest/pride'
require_relative 'string_stuff'

class StringMethodsTest < Minitest::Test
  attr_reader :string

  def setup
    @string = SimpleString.new('')
  end

  def test_it_finds_length
    string.data = "hello"
    assert_equal 5, string.data.length
  end

  def test_it_checks_end
    string.data = "hello"
    assert string.data.end_with?('o')
  end

  def test_it_capitalizes
    string.data = "hello"
    assert_equal "HELLO", string.data.upcase
  end

end
