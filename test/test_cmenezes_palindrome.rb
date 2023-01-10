# frozen_string_literal: true

require "test_helper"

class TestCmenezesPalindrome < Minitest::Test
  def test_empty_string
    refute "".palindrome?
  end

  def test_whitespace_string
    refute "  ".palindrome?
  end

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_palindrome
    assert "racecar".palindrome?
  end

  def test_palindrome_mixed_case
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_integer_non_palindrome
    refute 12_345.palindrome?
  end

  def test_integer_palindrome
    assert 12_321.palindrome?
  end
end
