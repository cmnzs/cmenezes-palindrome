# frozen_string_literal: true

require "test_helper"

class TestCmenezesPalindrome < Minitest::Test
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
    skip
  end
end
