require "./lib/raindrops/drop_generator.rb"
require "test/unit"

class TestDropGenerator < Test::Unit::TestCase

  def test_get_prime_division
    assert_equal([[2, 1], [3, 2], [5, 1]], DropGenerator.get_prime_division(90))
  end

  def test_get_sound
    assert_equal("pling", DropGenerator.get_sound(2))
    assert_equal(nil, DropGenerator.get_sound(1))
  end

  def test_has_eligible_prime?
    assert_true(DropGenerator.has_eligible_prime?([[7,1], [3,2]]))
    assert_false(DropGenerator.has_eligible_prime?([[7,1], [19,2]]))
  end

  def test_get_drop_list
    assert_equal(["plang"], DropGenerator.get_drop_list([[3,1], [19,2]]))
  end

  def test_convert
    assert_equal("blob", DropGenerator.convert(1))
    assert_equal("pling", DropGenerator.convert(2))
    assert_equal("*PLING*", DropGenerator.convert(8))
    assert_equal("pling, *PLING*, *PLING*", DropGenerator.convert(128))
  end
end