require "kgallant90_palindrome/version"

module Palindrome
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      !processed_content.empty?
    else
      processed_content == processed_content.reverse
    end 
  end

  private
    # Returns content for palindrome testing
    def processed_content
      self.to_s.scan(/[a-z]/i).join.downcase
    end
end

# Defines a Phrase class.
class String
  include Palindrome
end

class Integer
  include Palindrome
end
