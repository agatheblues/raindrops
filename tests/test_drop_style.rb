require "./lib/raindrops/drop_style.rb"
require "test/unit"

class TestStyle < Test::Unit::TestCase

  def test_upcase_sound
    assert_equal("HELLO", DropStyle.upcase_sound("hello"))
  end

  def test_star_sound
    assert_equal("*hello*", DropStyle.star_sound("hello"))
  end

  def test_get_style
    assert_equal("HELLO", DropStyle.get_style("hello", 2))
    assert_equal("*HELLO*", DropStyle.get_style("hello", 3))
    assert_equal("hello, *HELLO*", DropStyle.get_style("hello", 4))
    assert_equal("hello, *HELLO*, *HELLO*", DropStyle.get_style("hello", 7))
  end
end