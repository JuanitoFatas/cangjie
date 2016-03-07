require "cangjie/version"

module Cangjie
  def self.has_chinese?(text)
    text.split(EMPTY_STRING).any? { |char| char =~ /\p{Han}/ }
  end

  def self.all_chinese?(text)
    text.split(EMPTY_STRING).all? { |char| char =~ /\p{Han}/ }
  end

  # private

    EMPTY_STRING = "".freeze
    private_constant :EMPTY_STRING
end
