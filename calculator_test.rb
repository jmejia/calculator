require 'minitest/autorun'
require 'minitest/pride'
require './calculator'

class CalculatorTest < MiniTest::Test
  def test_it_exists
    calculator = Calculator.new
    assert calculator
  end

  def test_it_adds_two_numbers
    calc = Calculator.new
    assert_equal 0, calc.add(0,0)
    assert_equal 2, calc.add(1,1)
  end

  def test_it_has_a_total
    calc = Calculator.new
    assert calc.respond_to?(:total)
  end

  def test_total_is_zero_to_start
    calc = Calculator.new
    assert_equal 0, calc.total
  end

  def test_adding_two_numbers_changes_the_total
    calc = Calculator.new
    calc.add(1,1)
    assert_equal 2, calc.total
  end

  def test_adding_multiple_times_changes_the_total
    calc = Calculator.new
    calc.add(1,1)
    calc.add(1,1)
    assert_equal 4, calc.total
  end

  # test it has a subtract method
  # test subtract(0,0) returns 0
  # test subtract(2,1) returns 1
  # run add(5,3) and subtract(2,1), then test the total returns 5
end
