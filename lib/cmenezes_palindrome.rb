# frozen_string_literal: true

require_relative "cmenezes_palindrome/version"

module CmenezesPalindrome
  def palindrome?
    processed_content == processed_content.reverse && !processed_content.empty?
  end

  private

  def processed_content
    self.to_s.downcase.gsub(/[^\w+]/, "")
  end
end

class String
  include CmenezesPalindrome
end

class Integer
  include CmenezesPalindrome
end
