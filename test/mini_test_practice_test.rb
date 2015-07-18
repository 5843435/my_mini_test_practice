require 'test_helper'

class MiniTestPracticeTest < Minitest::Test
  def setup
    @main = MiniTestPractice::Main.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end

  def test_odd?
    assert @main.odd?(1) == true
    assert @main.odd?(2) == false
    assert @main.odd?(3) == true
    assert_equal false, @main.odd?(4)
    assert_equal true,  @main.odd?(123)
  end

  def test_check_number?
    assert @main.check_number?(1) == false
    assert @main.check_number?("0222".to_i) == false
    assert @main.check_number?(1222) == true
    assert @main.check_number?(1000) == true
    assert @main.check_number?(1223) == false
  end

  def test_enough_length?
    assert @main.enough_length?("abcdef") == true
    assert @main.enough_length?("あいうえおかきくけ") == false
    assert @main.enough_length?(123) == true
    assert @main.enough_length?(45678901) == true
    assert @main.enough_length?("4567a8901") == false
  end

  def test_divide
    assert @main.divide(2,4) == 2
    assert @main.divide(2,7) == 3
    assert_raises ZeroDivisionError do @main.divide(0,1)
  end

  def test_fizz_buzz
    assert @main.fizz_buzz(3) == "Fizz"
    assert @main.fizz_buzz(5) == "Buzz"
    assert @main.fizz_buzz(33) == "Fizz"
    assert @main.fizz_buzz(15) == "FizzBuzz"
    assert @main.fizz_buzz(555) == "FizzBuzz"
    assert @main.fizz_buzz(50) == "Buzz"
    assert @main.fizz_buzz(52) == false
  end

  def test_hello
    assert capture_io(hello) == "Hello"
  end

 end
end