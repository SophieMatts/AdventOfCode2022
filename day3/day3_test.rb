require_relative "day3"
require "test/unit"

class TestDay3 < Test::Unit::TestCase
  def test_example_part1
    day3 = Day3.new('day3_example.txt')
    assert_equal(157, day3.part1())
  end

  def test_part1
    day3 = Day3.new('day3.txt')
    assert_equal(8202, day3.part1())
  end
end
