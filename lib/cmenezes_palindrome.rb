# frozen_string_literal: true

require_relative "cmenezes_palindrome/version"

class String
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  def processed_content
    self.to_s.downcase
  end
end
