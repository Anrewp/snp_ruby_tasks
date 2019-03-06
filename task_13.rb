# Адаптируйте ваше решение из Упражнения 1 так, чтобы вместо palindrome?("foo")
# вы могли его использовать как "foo".palindrome? # => false.

module Palindrome

  def palindrome?
    return false if nil?

    str = downcase.scan(/\w/)
    str == str.reverse

  end
end

class String
  include Palindrome
end

# TESTS

# puts "foo".palindrome?
# puts "OOo".palindrome?
# puts "333".palindrome?
# puts "Madam, I'm Adam!".palindrome?
