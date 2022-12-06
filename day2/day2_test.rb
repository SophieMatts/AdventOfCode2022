require_relative "day2"
require "test/unit"

class TestDay2 < Test::Unit::TestCase
  def test_example_part1
    day2 = Day2.new('day2_example.txt')
   assert_equal(15, day2.part1())
  end

  def test_part1
   day2 = Day2.new('day2.txt')
   assert_equal(11841, day2.part1())
 end

 def test_example_part2
    day2 = Day2.new('day2_example.txt')
   assert_equal(12, day2.part2())
  end

  def test_example_part2
    day2 = Day2.new('day2.txt')
   assert_equal(13022, day2.part2())
  end

end
